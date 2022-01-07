; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_unp_accessable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_unp_accessable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filedescent = type { %struct.file* }
%struct.file = type { i32 }
%struct.unpcb = type { i32 }

@UNPGC_REF = common dso_local global i32 0, align 4
@UNPGC_DEAD = common dso_local global i32 0, align 4
@unp_marked = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.filedescent**, i32)* @unp_accessable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unp_accessable(%struct.filedescent** %0, i32 %1) #0 {
  %3 = alloca %struct.filedescent**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.unpcb*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  store %struct.filedescent** %0, %struct.filedescent*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %46, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %49

12:                                               ; preds = %8
  %13 = load %struct.filedescent**, %struct.filedescent*** %3, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.filedescent*, %struct.filedescent** %13, i64 %15
  %17 = load %struct.filedescent*, %struct.filedescent** %16, align 8
  %18 = getelementptr inbounds %struct.filedescent, %struct.filedescent* %17, i32 0, i32 0
  %19 = load %struct.file*, %struct.file** %18, align 8
  store %struct.file* %19, %struct.file** %6, align 8
  %20 = load %struct.file*, %struct.file** %6, align 8
  %21 = call %struct.unpcb* @fptounp(%struct.file* %20)
  store %struct.unpcb* %21, %struct.unpcb** %5, align 8
  %22 = icmp eq %struct.unpcb* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %46

24:                                               ; preds = %12
  %25 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %26 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @UNPGC_REF, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %46

32:                                               ; preds = %24
  %33 = load i32, i32* @UNPGC_DEAD, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %36 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @UNPGC_REF, align 4
  %40 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %41 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @unp_marked, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @unp_marked, align 4
  br label %46

46:                                               ; preds = %32, %31, %23
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %8

49:                                               ; preds = %8
  ret void
}

declare dso_local %struct.unpcb* @fptounp(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
