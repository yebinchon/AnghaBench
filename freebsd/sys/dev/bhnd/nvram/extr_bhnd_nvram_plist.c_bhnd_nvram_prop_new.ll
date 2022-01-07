; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_plist.c_bhnd_nvram_prop_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_plist.c_bhnd_nvram_prop_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_prop = type { i32, i32*, %struct.bhnd_nvram_prop* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bhnd_nvram_prop* @bhnd_nvram_prop_new(i8* %0, i32* %1) #0 {
  %3 = alloca %struct.bhnd_nvram_prop*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bhnd_nvram_prop*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = call %struct.bhnd_nvram_prop* @bhnd_nv_calloc(i32 1, i32 24)
  store %struct.bhnd_nvram_prop* %7, %struct.bhnd_nvram_prop** %6, align 8
  %8 = load %struct.bhnd_nvram_prop*, %struct.bhnd_nvram_prop** %6, align 8
  %9 = icmp eq %struct.bhnd_nvram_prop* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.bhnd_nvram_prop* null, %struct.bhnd_nvram_prop** %3, align 8
  br label %52

11:                                               ; preds = %2
  %12 = load %struct.bhnd_nvram_prop*, %struct.bhnd_nvram_prop** %6, align 8
  %13 = getelementptr inbounds %struct.bhnd_nvram_prop, %struct.bhnd_nvram_prop* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call %struct.bhnd_nvram_prop* @bhnd_nv_strdup(i8* %14)
  %16 = load %struct.bhnd_nvram_prop*, %struct.bhnd_nvram_prop** %6, align 8
  %17 = getelementptr inbounds %struct.bhnd_nvram_prop, %struct.bhnd_nvram_prop* %16, i32 0, i32 2
  store %struct.bhnd_nvram_prop* %15, %struct.bhnd_nvram_prop** %17, align 8
  %18 = icmp eq %struct.bhnd_nvram_prop* %15, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %29

20:                                               ; preds = %11
  %21 = load i32*, i32** %5, align 8
  %22 = call i32* @bhnd_nvram_val_copy(i32* %21)
  %23 = load %struct.bhnd_nvram_prop*, %struct.bhnd_nvram_prop** %6, align 8
  %24 = getelementptr inbounds %struct.bhnd_nvram_prop, %struct.bhnd_nvram_prop* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = icmp eq i32* %22, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %29

27:                                               ; preds = %20
  %28 = load %struct.bhnd_nvram_prop*, %struct.bhnd_nvram_prop** %6, align 8
  store %struct.bhnd_nvram_prop* %28, %struct.bhnd_nvram_prop** %3, align 8
  br label %52

29:                                               ; preds = %26, %19
  %30 = load %struct.bhnd_nvram_prop*, %struct.bhnd_nvram_prop** %6, align 8
  %31 = getelementptr inbounds %struct.bhnd_nvram_prop, %struct.bhnd_nvram_prop* %30, i32 0, i32 2
  %32 = load %struct.bhnd_nvram_prop*, %struct.bhnd_nvram_prop** %31, align 8
  %33 = icmp ne %struct.bhnd_nvram_prop* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.bhnd_nvram_prop*, %struct.bhnd_nvram_prop** %6, align 8
  %36 = getelementptr inbounds %struct.bhnd_nvram_prop, %struct.bhnd_nvram_prop* %35, i32 0, i32 2
  %37 = load %struct.bhnd_nvram_prop*, %struct.bhnd_nvram_prop** %36, align 8
  %38 = call i32 @bhnd_nv_free(%struct.bhnd_nvram_prop* %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.bhnd_nvram_prop*, %struct.bhnd_nvram_prop** %6, align 8
  %41 = getelementptr inbounds %struct.bhnd_nvram_prop, %struct.bhnd_nvram_prop* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.bhnd_nvram_prop*, %struct.bhnd_nvram_prop** %6, align 8
  %46 = getelementptr inbounds %struct.bhnd_nvram_prop, %struct.bhnd_nvram_prop* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @bhnd_nvram_val_release(i32* %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.bhnd_nvram_prop*, %struct.bhnd_nvram_prop** %6, align 8
  %51 = call i32 @bhnd_nv_free(%struct.bhnd_nvram_prop* %50)
  store %struct.bhnd_nvram_prop* null, %struct.bhnd_nvram_prop** %3, align 8
  br label %52

52:                                               ; preds = %49, %27, %10
  %53 = load %struct.bhnd_nvram_prop*, %struct.bhnd_nvram_prop** %3, align 8
  ret %struct.bhnd_nvram_prop* %53
}

declare dso_local %struct.bhnd_nvram_prop* @bhnd_nv_calloc(i32, i32) #1

declare dso_local %struct.bhnd_nvram_prop* @bhnd_nv_strdup(i8*) #1

declare dso_local i32* @bhnd_nvram_val_copy(i32*) #1

declare dso_local i32 @bhnd_nv_free(%struct.bhnd_nvram_prop*) #1

declare dso_local i32 @bhnd_nvram_val_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
