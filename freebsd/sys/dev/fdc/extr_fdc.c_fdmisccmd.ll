; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdmisccmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdmisccmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bio = type { i32, i32, i32, i32, i32, %struct.fd_data*, i8*, i64 }
%struct.fd_formb = type { i32, i32 }
%struct.fdc_readid = type { i32, i32 }

@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@BIO_FMT = common dso_local global i64 0, align 8
@BIO_RDID = common dso_local global i64 0, align 8
@BIO_PROBE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"wrong cmd in fdmisccmd()\00", align 1
@PRIBIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"fdwait\00", align 1
@hz = common dso_local global i32 0, align 4
@BIO_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fd_data*, i64, i8*)* @fdmisccmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdmisccmd(%struct.fd_data* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.fd_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.fd_formb*, align 8
  %9 = alloca %struct.fdc_readid*, align 8
  %10 = alloca i32, align 4
  store %struct.fd_data* %0, %struct.fd_data** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* @M_TEMP, align 4
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.bio* @malloc(i32 48, i32 %11, i32 %14)
  store %struct.bio* %15, %struct.bio** %7, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.bio*, %struct.bio** %7, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 7
  store i64 %16, i64* %18, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @BIO_FMT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to %struct.fd_formb*
  store %struct.fd_formb* %24, %struct.fd_formb** %8, align 8
  %25 = load %struct.fd_formb*, %struct.fd_formb** %8, align 8
  %26 = getelementptr inbounds %struct.fd_formb, %struct.fd_formb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fd_data*, %struct.fd_data** %4, align 8
  %29 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %27, %32
  %34 = load %struct.fd_formb*, %struct.fd_formb** %8, align 8
  %35 = getelementptr inbounds %struct.fd_formb, %struct.fd_formb* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  %38 = load %struct.fd_data*, %struct.fd_data** %4, align 8
  %39 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %37, %42
  %44 = load %struct.bio*, %struct.bio** %7, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.bio*, %struct.bio** %7, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 1
  store i32 8, i32* %47, align 4
  br label %87

48:                                               ; preds = %3
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @BIO_RDID, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %78

52:                                               ; preds = %48
  %53 = load i8*, i8** %6, align 8
  %54 = bitcast i8* %53 to %struct.fdc_readid*
  store %struct.fdc_readid* %54, %struct.fdc_readid** %9, align 8
  %55 = load %struct.fdc_readid*, %struct.fdc_readid** %9, align 8
  %56 = getelementptr inbounds %struct.fdc_readid, %struct.fdc_readid* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fd_data*, %struct.fd_data** %4, align 8
  %59 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %57, %62
  %64 = load %struct.fdc_readid*, %struct.fdc_readid** %9, align 8
  %65 = getelementptr inbounds %struct.fdc_readid, %struct.fdc_readid* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %63, %66
  %68 = load %struct.fd_data*, %struct.fd_data** %4, align 8
  %69 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %67, %72
  %74 = load %struct.bio*, %struct.bio** %7, align 8
  %75 = getelementptr inbounds %struct.bio, %struct.bio* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.bio*, %struct.bio** %7, align 8
  %77 = getelementptr inbounds %struct.bio, %struct.bio* %76, i32 0, i32 1
  store i32 8, i32* %77, align 4
  br label %86

78:                                               ; preds = %48
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* @BIO_PROBE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %85

83:                                               ; preds = %78
  %84 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %82
  br label %86

86:                                               ; preds = %85, %52
  br label %87

87:                                               ; preds = %86, %22
  %88 = load %struct.bio*, %struct.bio** %7, align 8
  %89 = getelementptr inbounds %struct.bio, %struct.bio* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.fd_data*, %struct.fd_data** %4, align 8
  %92 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = mul nsw i32 %90, %93
  %95 = load %struct.bio*, %struct.bio** %7, align 8
  %96 = getelementptr inbounds %struct.bio, %struct.bio* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = load %struct.bio*, %struct.bio** %7, align 8
  %99 = getelementptr inbounds %struct.bio, %struct.bio* %98, i32 0, i32 6
  store i8* %97, i8** %99, align 8
  %100 = load %struct.fd_data*, %struct.fd_data** %4, align 8
  %101 = load %struct.bio*, %struct.bio** %7, align 8
  %102 = getelementptr inbounds %struct.bio, %struct.bio* %101, i32 0, i32 5
  store %struct.fd_data* %100, %struct.fd_data** %102, align 8
  %103 = load %struct.bio*, %struct.bio** %7, align 8
  %104 = getelementptr inbounds %struct.bio, %struct.bio* %103, i32 0, i32 3
  store i32 0, i32* %104, align 4
  %105 = load %struct.fd_data*, %struct.fd_data** %4, align 8
  %106 = load %struct.bio*, %struct.bio** %7, align 8
  %107 = call i32 @fd_enqueue(%struct.fd_data* %105, %struct.bio* %106)
  br label %108

108:                                              ; preds = %113, %87
  %109 = load %struct.bio*, %struct.bio** %7, align 8
  %110 = load i32, i32* @PRIBIO, align 4
  %111 = load i32, i32* @hz, align 4
  %112 = call i32 @tsleep(%struct.bio* %109, i32 %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %108
  %114 = load %struct.bio*, %struct.bio** %7, align 8
  %115 = getelementptr inbounds %struct.bio, %struct.bio* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @BIO_DONE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  br i1 %120, label %108, label %121

121:                                              ; preds = %113
  %122 = load %struct.bio*, %struct.bio** %7, align 8
  %123 = getelementptr inbounds %struct.bio, %struct.bio* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* %10, align 4
  %125 = load %struct.bio*, %struct.bio** %7, align 8
  %126 = load i32, i32* @M_TEMP, align 4
  %127 = call i32 @free(%struct.bio* %125, i32 %126)
  %128 = load i32, i32* %10, align 4
  ret i32 %128
}

declare dso_local %struct.bio* @malloc(i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @fd_enqueue(%struct.fd_data*, %struct.bio*) #1

declare dso_local i32 @tsleep(%struct.bio*, i32, i8*, i32) #1

declare dso_local i32 @free(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
