; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_bsdextended/extr_mac_bsdextended.c_ugidfw_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_bsdextended/extr_mac_bsdextended.c_ugidfw_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.vattr = type { i32 }

@MBI_APPEND = common dso_local global i32 0, align 4
@MBI_WRITE = common dso_local global i32 0, align 4
@ugidfw_mtx = common dso_local global i32 0, align 4
@rule_slots = common dso_local global i32 0, align 4
@rules = common dso_local global i32** null, align 8
@EJUSTRETURN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ugidfw_check(%struct.ucred* %0, %struct.vnode* %1, %struct.vattr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.vattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %6, align 8
  store %struct.vnode* %1, %struct.vnode** %7, align 8
  store %struct.vattr* %2, %struct.vattr** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @MBI_APPEND, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load i32, i32* @MBI_APPEND, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %9, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @MBI_WRITE, align 4
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %16, %4
  %25 = call i32 @mtx_lock(i32* @ugidfw_mtx)
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %60, %24
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @rule_slots, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %26
  %31 = load i32**, i32*** @rules, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %60

38:                                               ; preds = %30
  %39 = load i32**, i32*** @rules, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.ucred*, %struct.ucred** %6, align 8
  %45 = load %struct.vnode*, %struct.vnode** %7, align 8
  %46 = load %struct.vattr*, %struct.vattr** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @ugidfw_rulecheck(i32* %43, %struct.ucred* %44, %struct.vnode* %45, %struct.vattr* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @EJUSTRETURN, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  br label %63

53:                                               ; preds = %38
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = call i32 @mtx_unlock(i32* @ugidfw_mtx)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %65

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %37
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %26

63:                                               ; preds = %52, %26
  %64 = call i32 @mtx_unlock(i32* @ugidfw_mtx)
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %56
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ugidfw_rulecheck(i32*, %struct.ucred*, %struct.vnode*, %struct.vattr*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
