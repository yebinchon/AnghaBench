; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/safe/extr_safe.c_safe_setup_enckey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/safe/extr_safe.c_safe_setup_enckey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safe_session = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.safe_session*, i32)* @safe_setup_enckey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @safe_setup_enckey(%struct.safe_session* %0, i32 %1) #0 {
  %3 = alloca %struct.safe_session*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.safe_session* %0, %struct.safe_session** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.safe_session*, %struct.safe_session** %3, align 8
  %8 = getelementptr inbounds %struct.safe_session, %struct.safe_session* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = load %struct.safe_session*, %struct.safe_session** %3, align 8
  %11 = getelementptr inbounds %struct.safe_session, %struct.safe_session* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sdiv i32 %12, 8
  %14 = call i32 @bcopy(i32 %6, i32* %9, i32 %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %37, %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.safe_session*, %struct.safe_session** %3, align 8
  %18 = getelementptr inbounds %struct.safe_session, %struct.safe_session* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @N(i32* %19)
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %15
  %23 = load %struct.safe_session*, %struct.safe_session** %3, align 8
  %24 = getelementptr inbounds %struct.safe_session, %struct.safe_session* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @htole32(i32 %29)
  %31 = load %struct.safe_session*, %struct.safe_session** %3, align 8
  %32 = getelementptr inbounds %struct.safe_session, %struct.safe_session* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %30, i32* %36, align 4
  br label %37

37:                                               ; preds = %22
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %15

40:                                               ; preds = %15
  ret void
}

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @N(i32*) #1

declare dso_local i32 @htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
