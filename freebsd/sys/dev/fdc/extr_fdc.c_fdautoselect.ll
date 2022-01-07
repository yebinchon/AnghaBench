; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdautoselect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdautoselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd_type = type { i32, i64 }
%struct.fd_data = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.fdc_readid = type { i32, i32, i64 }

@FL_AUTO = common dso_local global i32 0, align 4
@fd_native_types = common dso_local global %struct.fd_type** null, align 8
@FDOPT_NOERRLOG = common dso_local global i32 0, align 4
@FDOPT_NORETRY = common dso_local global i32 0, align 4
@BIO_RDID = common dso_local global i32 0, align 4
@debugflags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"autoselection failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"autoselected %d KB medium\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fd_data*)* @fdautoselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdautoselect(%struct.fd_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fd_data*, align 8
  %4 = alloca %struct.fd_type*, align 8
  %5 = alloca %struct.fdc_readid, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fd_data* %0, %struct.fd_data** %3, align 8
  %8 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %9 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @FL_AUTO, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %166

17:                                               ; preds = %1
  %18 = load %struct.fd_type**, %struct.fd_type*** @fd_native_types, align 8
  %19 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %20 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.fd_type*, %struct.fd_type** %18, i64 %21
  %23 = load %struct.fd_type*, %struct.fd_type** %22, align 8
  store %struct.fd_type* %23, %struct.fd_type** %4, align 8
  %24 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %25 = load %struct.fd_type*, %struct.fd_type** %4, align 8
  %26 = call i32 @fdsettype(%struct.fd_data* %24, %struct.fd_type* %25)
  %27 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %28 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @FL_AUTO, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %166

36:                                               ; preds = %17
  %37 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %38 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @FDOPT_NOERRLOG, align 4
  %41 = load i32, i32* @FDOPT_NORETRY, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %44 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %117, %36
  %48 = load %struct.fd_type*, %struct.fd_type** %4, align 8
  %49 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %120

52:                                               ; preds = %47
  %53 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %54 = load %struct.fd_type*, %struct.fd_type** %4, align 8
  %55 = call i32 @fdsettype(%struct.fd_data* %53, %struct.fd_type* %54)
  %56 = getelementptr inbounds %struct.fdc_readid, %struct.fdc_readid* %5, i32 0, i32 1
  store i32 0, i32* %56, align 4
  %57 = getelementptr inbounds %struct.fdc_readid, %struct.fdc_readid* %5, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %59 = load i32, i32* @BIO_RDID, align 4
  %60 = call i32 @fdmisccmd(%struct.fd_data* %58, i32 %59, %struct.fdc_readid* %5)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %117

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.fdc_readid, %struct.fdc_readid* %5, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.fdc_readid, %struct.fdc_readid* %5, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.fdc_readid, %struct.fdc_readid* %5, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.fd_type*, %struct.fd_type** %4, align 8
  %76 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %72, %68, %64
  br label %117

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.fdc_readid, %struct.fdc_readid* %5, i32 0, i32 0
  store i32 2, i32* %81, align 8
  %82 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %83 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %86, 1
  %88 = trunc i64 %87 to i32
  %89 = getelementptr inbounds %struct.fdc_readid, %struct.fdc_readid* %5, i32 0, i32 1
  store i32 %88, i32* %89, align 4
  %90 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %91 = load i32, i32* @BIO_RDID, align 4
  %92 = call i32 @fdmisccmd(%struct.fd_data* %90, i32 %91, %struct.fdc_readid* %5)
  store i32 %92, i32* %7, align 4
  %93 = getelementptr inbounds %struct.fdc_readid, %struct.fdc_readid* %5, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 2
  br i1 %95, label %111, label %96

96:                                               ; preds = %80
  %97 = getelementptr inbounds %struct.fdc_readid, %struct.fdc_readid* %5, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.fd_type*, %struct.fd_type** %4, align 8
  %100 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %101, 1
  %103 = icmp ne i32 %98, %102
  br i1 %103, label %111, label %104

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.fdc_readid, %struct.fdc_readid* %5, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.fd_type*, %struct.fd_type** %4, align 8
  %108 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %106, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %104, %96, %80
  br label %117

112:                                              ; preds = %104
  %113 = load i32, i32* %7, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %120

116:                                              ; preds = %112
  br label %117

117:                                              ; preds = %116, %111, %79, %63
  %118 = load %struct.fd_type*, %struct.fd_type** %4, align 8
  %119 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %118, i32 1
  store %struct.fd_type* %119, %struct.fd_type** %4, align 8
  br label %47

120:                                              ; preds = %115, %47
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %123 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 8
  %124 = load %struct.fd_type*, %struct.fd_type** %4, align 8
  %125 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %146

128:                                              ; preds = %120
  %129 = load i32, i32* @debugflags, align 4
  %130 = and i32 %129, 64
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %134 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (i32, i8*, ...) @device_printf(i32 %135, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %137

137:                                              ; preds = %132, %128
  %138 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %139 = load %struct.fd_type**, %struct.fd_type*** @fd_native_types, align 8
  %140 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %141 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.fd_type*, %struct.fd_type** %139, i64 %142
  %144 = load %struct.fd_type*, %struct.fd_type** %143, align 8
  %145 = call i32 @fdsettype(%struct.fd_data* %138, %struct.fd_type* %144)
  store i32 -1, i32* %2, align 4
  br label %166

146:                                              ; preds = %120
  %147 = load i32, i32* @debugflags, align 4
  %148 = and i32 %147, 64
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %165

150:                                              ; preds = %146
  %151 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %152 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %155 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %154, i32 0, i32 2
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = sdiv i32 %158, 2
  %160 = call i32 (i32, i8*, ...) @device_printf(i32 %153, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %159)
  %161 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %162 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %161, i32 0, i32 2
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = call i32 @fdprinttype(%struct.TYPE_2__* %163)
  br label %165

165:                                              ; preds = %150, %146
  store i32 0, i32* %2, align 4
  br label %166

166:                                              ; preds = %165, %137, %35, %16
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @fdsettype(%struct.fd_data*, %struct.fd_type*) #1

declare dso_local i32 @fdmisccmd(%struct.fd_data*, i32, %struct.fdc_readid*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @fdprinttype(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
