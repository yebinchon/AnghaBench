; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_t4_register_fw_msg_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_t4_register_fw_msg_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@t4_fw_msg_handler = common dso_local global i32** null, align 8
@FW_TYPE_RSSCPL = common dso_local global i32 0, align 4
@FW6_TYPE_RSSCPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_register_fw_msg_handler(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i32**, i32*** @t4_fw_msg_handler, align 8
  %8 = call i32 @nitems(i32** %7)
  %9 = icmp slt i32 %6, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @MPASS(i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load i32**, i32*** @t4_fw_msg_handler, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br label %21

21:                                               ; preds = %14, %2
  %22 = phi i1 [ true, %2 ], [ %20, %14 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @MPASS(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @FW_TYPE_RSSCPL, align 4
  %27 = icmp ne i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @MPASS(i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @FW6_TYPE_RSSCPL, align 4
  %32 = icmp ne i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @MPASS(i32 %33)
  %35 = load i32**, i32*** @t4_fw_msg_handler, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = bitcast i32** %38 to i64*
  store i64* %39, i64** %5, align 8
  %40 = load i64*, i64** %5, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = ptrtoint i32* %41 to i64
  %43 = call i32 @atomic_store_rel_ptr(i64* %40, i64 %42)
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @nitems(i32**) #1

declare dso_local i32 @atomic_store_rel_ptr(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
