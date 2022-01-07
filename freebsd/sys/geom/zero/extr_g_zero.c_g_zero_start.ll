; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/zero/extr_g_zero.c_g_zero_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/zero/extr_g_zero.c_g_zero_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@g_zero_clear = common dso_local global i32 0, align 4
@BIO_UNMAPPED = common dso_local global i32 0, align 4
@g_zero_byte = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_zero_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_zero_start(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load i32, i32* @ENXIO, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %35 [
    i32 129, label %8
    i32 131, label %28
    i32 128, label %28
    i32 130, label %34
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @g_zero_clear, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = load %struct.bio*, %struct.bio** %2, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BIO_UNMAPPED, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %11
  %19 = load %struct.bio*, %struct.bio** %2, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @g_zero_byte, align 4
  %23 = load %struct.bio*, %struct.bio** %2, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @memset(i32 %21, i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %18, %11, %8
  br label %28

28:                                               ; preds = %1, %1, %27
  %29 = load %struct.bio*, %struct.bio** %2, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bio*, %struct.bio** %2, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %3, align 4
  br label %37

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %1, %34
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %28
  %38 = load %struct.bio*, %struct.bio** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @g_io_deliver(%struct.bio* %38, i32 %39)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
