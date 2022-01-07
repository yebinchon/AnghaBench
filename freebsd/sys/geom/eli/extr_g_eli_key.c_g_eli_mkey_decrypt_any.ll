; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_key.c_g_eli_mkey_decrypt_any.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_key.c_g_eli_mkey_decrypt_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_eli_metadata = type { i32 }

@G_ELI_MAXMKEYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_eli_mkey_decrypt_any(%struct.g_eli_metadata* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.g_eli_metadata*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.g_eli_metadata* %0, %struct.g_eli_metadata** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32*, i32** %8, align 8
  store i32 -1, i32* %14, align 4
  br label %15

15:                                               ; preds = %13, %4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %41, %15
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @G_ELI_MAXMKEYS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @g_eli_mkey_decrypt(%struct.g_eli_metadata* %21, i8* %22, i8* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %28
  br label %44

35:                                               ; preds = %20
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %44

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %16

44:                                               ; preds = %38, %34, %16
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local i32 @g_eli_mkey_decrypt(%struct.g_eli_metadata*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
