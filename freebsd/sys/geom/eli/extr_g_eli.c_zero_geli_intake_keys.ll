; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli.c_zero_geli_intake_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli.c_zero_geli_intake_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keybuf = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@KEYBUF_TYPE_GELI = common dso_local global i64 0, align 8
@KEYBUF_TYPE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @zero_geli_intake_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zero_geli_intake_keys() #0 {
  %1 = alloca %struct.keybuf*, align 8
  %2 = alloca i32, align 4
  %3 = call %struct.keybuf* (...) @get_keybuf()
  store %struct.keybuf* %3, %struct.keybuf** %1, align 8
  %4 = icmp ne %struct.keybuf* %3, null
  br i1 %4, label %5, label %46

5:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %42, %5
  %7 = load i32, i32* %2, align 4
  %8 = load %struct.keybuf*, %struct.keybuf** %1, align 8
  %9 = getelementptr inbounds %struct.keybuf, %struct.keybuf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %45

12:                                               ; preds = %6
  %13 = load %struct.keybuf*, %struct.keybuf** %1, align 8
  %14 = getelementptr inbounds %struct.keybuf, %struct.keybuf* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @KEYBUF_TYPE_GELI, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %12
  %24 = load %struct.keybuf*, %struct.keybuf** %1, align 8
  %25 = getelementptr inbounds %struct.keybuf, %struct.keybuf* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @explicit_bzero(i32 %31, i32 4)
  %33 = load i64, i64* @KEYBUF_TYPE_NONE, align 8
  %34 = load %struct.keybuf*, %struct.keybuf** %1, align 8
  %35 = getelementptr inbounds %struct.keybuf, %struct.keybuf* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i64 %33, i64* %40, align 8
  br label %41

41:                                               ; preds = %23, %12
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %2, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %2, align 4
  br label %6

45:                                               ; preds = %6
  br label %46

46:                                               ; preds = %45, %0
  ret void
}

declare dso_local %struct.keybuf* @get_keybuf(...) #1

declare dso_local i32 @explicit_bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
