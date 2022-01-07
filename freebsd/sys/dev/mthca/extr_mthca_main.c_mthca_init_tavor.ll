; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_main.c_mthca_init_tavor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_main.c_mthca_init_tavor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_profile = type { i32, i32, i64 }
%struct.mthca_dev = type { i32 }
%struct.mthca_dev_lim = type { i32, i32 }
%struct.mthca_init_hca_param = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"SYS_EN command returned %d, aborting.\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"QUERY_FW command returned %d, aborting.\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"QUERY_DDR command returned %d, aborting.\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"QUERY_DEV_LIM command returned %d, aborting.\0A\00", align 1
@hca_profile = common dso_local global %struct.mthca_profile zeroinitializer, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@MTHCA_FLAG_SRQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"INIT_HCA command returned %d, aborting.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_dev*)* @mthca_init_tavor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_init_tavor(%struct.mthca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mthca_dev_lim, align 4
  %7 = alloca %struct.mthca_profile, align 8
  %8 = alloca %struct.mthca_init_hca_param, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  %9 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %10 = call i32 @mthca_SYS_EN(%struct.mthca_dev* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @mthca_err(%struct.mthca_dev* %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %84

18:                                               ; preds = %1
  %19 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %20 = call i32 @mthca_QUERY_FW(%struct.mthca_dev* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @mthca_err(%struct.mthca_dev* %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %80

27:                                               ; preds = %18
  %28 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %29 = call i32 @mthca_QUERY_DDR(%struct.mthca_dev* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @mthca_err(%struct.mthca_dev* %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %80

36:                                               ; preds = %27
  %37 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %38 = call i32 @mthca_dev_lim(%struct.mthca_dev* %37, %struct.mthca_dev_lim* %6)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @mthca_err(%struct.mthca_dev* %42, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %80

45:                                               ; preds = %36
  %46 = bitcast %struct.mthca_profile* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 bitcast (%struct.mthca_profile* @hca_profile to i8*), i64 16, i1 false)
  %47 = getelementptr inbounds %struct.mthca_dev_lim, %struct.mthca_dev_lim* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = sdiv i32 %48, %49
  %51 = getelementptr inbounds %struct.mthca_profile, %struct.mthca_profile* %7, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  %52 = getelementptr inbounds %struct.mthca_profile, %struct.mthca_profile* %7, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %54 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MTHCA_FLAG_SRQ, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %45
  %60 = getelementptr inbounds %struct.mthca_dev_lim, %struct.mthca_dev_lim* %6, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.mthca_profile, %struct.mthca_profile* %7, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %45
  %64 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %65 = call i32 @mthca_make_profile(%struct.mthca_dev* %64, %struct.mthca_profile* %7, %struct.mthca_dev_lim* %6, %struct.mthca_init_hca_param* %8)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %5, align 4
  br label %80

70:                                               ; preds = %63
  %71 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %72 = call i32 @mthca_INIT_HCA(%struct.mthca_dev* %71, %struct.mthca_init_hca_param* %8)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @mthca_err(%struct.mthca_dev* %76, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  br label %80

79:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %84

80:                                               ; preds = %75, %68, %41, %32, %23
  %81 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %82 = call i32 @mthca_SYS_DIS(%struct.mthca_dev* %81)
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %80, %79, %13
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @mthca_SYS_EN(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_err(%struct.mthca_dev*, i8*, i32) #1

declare dso_local i32 @mthca_QUERY_FW(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_QUERY_DDR(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_dev_lim(%struct.mthca_dev*, %struct.mthca_dev_lim*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mthca_make_profile(%struct.mthca_dev*, %struct.mthca_profile*, %struct.mthca_dev_lim*, %struct.mthca_init_hca_param*) #1

declare dso_local i32 @mthca_INIT_HCA(%struct.mthca_dev*, %struct.mthca_init_hca_param*) #1

declare dso_local i32 @mthca_SYS_DIS(%struct.mthca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
