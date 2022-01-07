; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/asmc/extr_asmc.c_asmc_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/asmc/extr_asmc.c_asmc_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asmc_model = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"smbios.system.product\00", align 1
@asmc_models = common dso_local global %struct.asmc_model* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.asmc_model* (i32)* @asmc_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.asmc_model* @asmc_match(i32 %0) #0 {
  %2 = alloca %struct.asmc_model*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %6 = call i8* @kern_getenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.asmc_model* null, %struct.asmc_model** %2, align 8
  br label %45

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %39, %10
  %12 = load %struct.asmc_model*, %struct.asmc_model** @asmc_models, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.asmc_model, %struct.asmc_model* %12, i64 %14
  %16 = getelementptr inbounds %struct.asmc_model, %struct.asmc_model* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %11
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.asmc_model*, %struct.asmc_model** @asmc_models, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.asmc_model, %struct.asmc_model* %21, i64 %23
  %25 = getelementptr inbounds %struct.asmc_model, %struct.asmc_model* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = call i32 @strncmp(i8* %20, i64 %26, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %19
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @freeenv(i8* %32)
  %34 = load %struct.asmc_model*, %struct.asmc_model** @asmc_models, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.asmc_model, %struct.asmc_model* %34, i64 %36
  store %struct.asmc_model* %37, %struct.asmc_model** %2, align 8
  br label %45

38:                                               ; preds = %19
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %11

42:                                               ; preds = %11
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @freeenv(i8* %43)
  store %struct.asmc_model* null, %struct.asmc_model** %2, align 8
  br label %45

45:                                               ; preds = %42, %31, %9
  %46 = load %struct.asmc_model*, %struct.asmc_model** %2, align 8
  ret %struct.asmc_model* %46
}

declare dso_local i8* @kern_getenv(i8*) #1

declare dso_local i32 @strncmp(i8*, i64, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @freeenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
