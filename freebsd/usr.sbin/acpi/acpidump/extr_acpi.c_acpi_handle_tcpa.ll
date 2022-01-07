; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidump/extr_acpi.c_acpi_handle_tcpa.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidump/extr_acpi.c_acpi_handle_tcpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TCPAbody = type { i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TCPAevent = type { i32, i64 }

@BEGIN_COMMENT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"XXX\00", align 1
@END_COMMENT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"\09Class %u Base Address 0x%jx Length %ju\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"\09Empty TCPA table\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"\09OLD TCPA spec log found. Dumping not supported.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @acpi_handle_tcpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_handle_tcpa(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TCPAbody*, align 8
  %4 = alloca %struct.TCPAevent*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %9 = load i8*, i8** @BEGIN_COMMENT, align 8
  %10 = call i32 (i8*, ...) @printf(i8* %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = call i32 @acpi_print_sdt(%struct.TYPE_8__* %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = bitcast %struct.TYPE_8__* %13 to %struct.TCPAbody*
  store %struct.TCPAbody* %14, %struct.TCPAbody** %3, align 8
  %15 = load %struct.TCPAbody*, %struct.TCPAbody** %3, align 8
  %16 = getelementptr inbounds %struct.TCPAbody, %struct.TCPAbody* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %36 [
    i32 129, label %18
    i32 128, label %27
  ]

18:                                               ; preds = %1
  %19 = load %struct.TCPAbody*, %struct.TCPAbody** %3, align 8
  %20 = getelementptr inbounds %struct.TCPAbody, %struct.TCPAbody* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  %23 = load %struct.TCPAbody*, %struct.TCPAbody** %3, align 8
  %24 = getelementptr inbounds %struct.TCPAbody, %struct.TCPAbody* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %6, align 8
  br label %40

27:                                               ; preds = %1
  %28 = load %struct.TCPAbody*, %struct.TCPAbody** %3, align 8
  %29 = getelementptr inbounds %struct.TCPAbody, %struct.TCPAbody* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %5, align 8
  %32 = load %struct.TCPAbody*, %struct.TCPAbody** %3, align 8
  %33 = getelementptr inbounds %struct.TCPAbody, %struct.TCPAbody* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %6, align 8
  br label %40

36:                                               ; preds = %1
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %38 = load i8*, i8** @END_COMMENT, align 8
  %39 = call i32 (i8*, ...) @printf(i8* %38)
  br label %130

40:                                               ; preds = %27, %18
  %41 = load %struct.TCPAbody*, %struct.TCPAbody** %3, align 8
  %42 = getelementptr inbounds %struct.TCPAbody, %struct.TCPAbody* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %43, i64 %44, i64 %45)
  %47 = load i64, i64* %5, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i8*, i8** @END_COMMENT, align 8
  %52 = call i32 (i8*, ...) @printf(i8* %51)
  br label %130

53:                                               ; preds = %40
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i8*, i8** @END_COMMENT, align 8
  %61 = call i32 (i8*, ...) @printf(i8* %60)
  br label %130

62:                                               ; preds = %53
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i64 @acpi_map_physical(i64 %63, i64 %64)
  %66 = inttoptr i64 %65 to i8*
  store i8* %66, i8** %7, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %8, align 8
  br label %70

70:                                               ; preds = %117, %62
  %71 = load i8*, i8** %7, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %127

73:                                               ; preds = %70
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 16
  %76 = load i8*, i8** %8, align 8
  %77 = icmp uge i8* %75, %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 16
  %81 = load i8*, i8** %7, align 8
  %82 = icmp ult i8* %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %73
  br label %127

84:                                               ; preds = %78
  %85 = load i8*, i8** %7, align 8
  %86 = bitcast i8* %85 to %struct.TCPAevent*
  store %struct.TCPAevent* %86, %struct.TCPAevent** %4, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load %struct.TCPAevent*, %struct.TCPAevent** %4, align 8
  %89 = getelementptr inbounds %struct.TCPAevent, %struct.TCPAevent* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %87, i64 %91
  %93 = load i8*, i8** %8, align 8
  %94 = icmp uge i8* %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %127

96:                                               ; preds = %84
  %97 = load i8*, i8** %7, align 8
  %98 = load %struct.TCPAevent*, %struct.TCPAevent** %4, align 8
  %99 = getelementptr inbounds %struct.TCPAevent, %struct.TCPAevent* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %97, i64 %101
  %103 = load i8*, i8** %7, align 8
  %104 = icmp ult i8* %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  br label %127

106:                                              ; preds = %96
  %107 = load %struct.TCPAevent*, %struct.TCPAevent** %4, align 8
  %108 = getelementptr inbounds %struct.TCPAevent, %struct.TCPAevent* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load %struct.TCPAevent*, %struct.TCPAevent** %4, align 8
  %113 = getelementptr inbounds %struct.TCPAevent, %struct.TCPAevent* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %127

117:                                              ; preds = %111, %106
  %118 = load %struct.TCPAevent*, %struct.TCPAevent** %4, align 8
  %119 = call i32 @acpi_print_tcpa(%struct.TCPAevent* %118)
  %120 = load %struct.TCPAevent*, %struct.TCPAevent** %4, align 8
  %121 = getelementptr inbounds %struct.TCPAevent, %struct.TCPAevent* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = add i64 16, %123
  %125 = load i8*, i8** %7, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 %124
  store i8* %126, i8** %7, align 8
  br label %70

127:                                              ; preds = %116, %105, %95, %83, %70
  %128 = load i8*, i8** @END_COMMENT, align 8
  %129 = call i32 (i8*, ...) @printf(i8* %128)
  br label %130

130:                                              ; preds = %127, %58, %49, %36
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @acpi_print_sdt(%struct.TYPE_8__*) #1

declare dso_local i64 @acpi_map_physical(i64, i64) #1

declare dso_local i32 @acpi_print_tcpa(%struct.TCPAevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
