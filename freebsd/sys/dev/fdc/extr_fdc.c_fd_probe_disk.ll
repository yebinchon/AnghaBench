; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fd_probe_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fd_probe_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd_data = type { i32, i32, i32, %struct.fdc_data* }
%struct.fdc_data = type { i32 }

@FDOPT_NOERRLOG = common dso_local global i32 0, align 4
@FDOPT_NORETRY = common dso_local global i32 0, align 4
@debugflags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"New disk in probe\0A\00", align 1
@FD_NEWDISK = common dso_local global i32 0, align 4
@NE7CMD_RECAL = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"fdrecal\00", align 1
@hz = common dso_local global i32 0, align 4
@FD_NOT_VALID = common dso_local global i64 0, align 8
@NE7CMD_SEEK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"fdseek\00", align 1
@FDI_DCHG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Empty in probe\0A\00", align 1
@FD_EMPTY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Got disk in probe\0A\00", align 1
@NE7_ST3_WP = common dso_local global i32 0, align 4
@FD_WP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fd_data*, i32*)* @fd_probe_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_probe_disk(%struct.fd_data* %0, i32* %1) #0 {
  %3 = alloca %struct.fd_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.fdc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fd_data* %0, %struct.fd_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %12 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %11, i32 0, i32 3
  %13 = load %struct.fdc_data*, %struct.fdc_data** %12, align 8
  store %struct.fdc_data* %13, %struct.fdc_data** %5, align 8
  %14 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %15 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @FDOPT_NOERRLOG, align 4
  %18 = load i32, i32* @FDOPT_NORETRY, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %21 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  store i32 1, i32* %10, align 4
  %24 = load i32, i32* @debugflags, align 4
  %25 = and i32 %24, 64
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %2
  %30 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %31 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %30, i32 0, i32 0
  %32 = call i32 @mtx_lock(i32* %31)
  %33 = load i32, i32* @FD_NEWDISK, align 4
  %34 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %35 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %39 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %38, i32 0, i32 0
  %40 = call i32 @mtx_unlock(i32* %39)
  %41 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %42 = load i32, i32* @NE7CMD_RECAL, align 4
  %43 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %44 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 (%struct.fdc_data*, i32, i32, i32, i32, ...) @fdc_cmd(%struct.fdc_data* %41, i32 2, i32 %42, i32 %45, i32 0)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %29
  br label %160

49:                                               ; preds = %29
  %50 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %51 = load i32, i32* @PRIBIO, align 4
  %52 = load i32, i32* @hz, align 4
  %53 = call i32 @tsleep(%struct.fdc_data* %50, i32 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %55 = call i64 @fdc_sense_int(%struct.fdc_data* %54, i32* %6, i32* %8)
  %56 = load i64, i64* @FD_NOT_VALID, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %160

59:                                               ; preds = %49
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, 192
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63, %59
  br label %160

67:                                               ; preds = %63
  %68 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %69 = load i32, i32* @NE7CMD_SEEK, align 4
  %70 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %71 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 (%struct.fdc_data*, i32, i32, i32, i32, ...) @fdc_cmd(%struct.fdc_data* %68, i32 3, i32 %69, i32 %72, i32 1, i32 0)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %160

76:                                               ; preds = %67
  %77 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %78 = load i32, i32* @PRIBIO, align 4
  %79 = load i32, i32* @hz, align 4
  %80 = call i32 @tsleep(%struct.fdc_data* %77, i32 %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %82 = call i64 @fdc_sense_int(%struct.fdc_data* %81, i32* %6, i32* %8)
  %83 = load i64, i64* @FD_NOT_VALID, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %160

86:                                               ; preds = %76
  %87 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %88 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 1, %89
  %91 = load i32*, i32** %4, align 8
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %90
  store i32 %93, i32* %91, align 4
  %94 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %95 = call i32 @fdin_rd(%struct.fdc_data* %94)
  %96 = load i32, i32* @FDI_DCHG, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %86
  %100 = load i32, i32* @debugflags, align 4
  %101 = and i32 %100, 64
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %99
  %106 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %107 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %106, i32 0, i32 0
  %108 = call i32 @mtx_lock(i32* %107)
  %109 = load i32, i32* @FD_EMPTY, align 4
  %110 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %111 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %115 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %114, i32 0, i32 0
  %116 = call i32 @mtx_unlock(i32* %115)
  br label %159

117:                                              ; preds = %86
  %118 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %119 = call i64 @fdc_sense_drive(%struct.fdc_data* %118, i32* %7)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  br label %160

122:                                              ; preds = %117
  %123 = load i32, i32* @debugflags, align 4
  %124 = and i32 %123, 64
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %122
  %129 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %130 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %129, i32 0, i32 0
  %131 = call i32 @mtx_lock(i32* %130)
  %132 = load i32, i32* @FD_EMPTY, align 4
  %133 = xor i32 %132, -1
  %134 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %135 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @NE7_ST3_WP, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %128
  %143 = load i32, i32* @FD_WP, align 4
  %144 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %145 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  br label %155

148:                                              ; preds = %128
  %149 = load i32, i32* @FD_WP, align 4
  %150 = xor i32 %149, -1
  %151 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %152 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = and i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %148, %142
  %156 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %157 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %156, i32 0, i32 0
  %158 = call i32 @mtx_unlock(i32* %157)
  br label %159

159:                                              ; preds = %155, %105
  store i32 0, i32* %10, align 4
  br label %160

160:                                              ; preds = %159, %121, %85, %75, %66, %58, %48
  %161 = load i32, i32* %9, align 4
  %162 = load %struct.fd_data*, %struct.fd_data** %3, align 8
  %163 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* %10, align 4
  ret i32 %164
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @fdc_cmd(%struct.fdc_data*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @tsleep(%struct.fdc_data*, i32, i8*, i32) #1

declare dso_local i64 @fdc_sense_int(%struct.fdc_data*, i32*, i32*) #1

declare dso_local i32 @fdin_rd(%struct.fdc_data*) #1

declare dso_local i64 @fdc_sense_drive(%struct.fdc_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
