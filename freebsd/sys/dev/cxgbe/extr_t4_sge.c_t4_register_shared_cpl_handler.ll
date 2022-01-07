; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_t4_register_shared_cpl_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_t4_register_shared_cpl_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@t4_cpl_handler = common dso_local global i32** null, align 8
@CPL_COOKIE_RESERVED = common dso_local global i32 0, align 4
@NUM_CPL_COOKIES = common dso_local global i32 0, align 4
@set_tcb_rpl_handlers = common dso_local global i32* null, align 8
@l2t_write_rpl_handlers = common dso_local global i32* null, align 8
@act_open_rpl_handlers = common dso_local global i32* null, align 8
@abort_rpl_rss_handlers = common dso_local global i32* null, align 8
@fw4_ack_handlers = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_register_shared_cpl_handler(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32**, i32*** @t4_cpl_handler, align 8
  %10 = call i32 @nitems(i32** %9)
  %11 = icmp slt i32 %8, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @MPASS(i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @CPL_COOKIE_RESERVED, align 4
  %16 = icmp sgt i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @MPASS(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @NUM_CPL_COOKIES, align 4
  %21 = icmp slt i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @MPASS(i32 %22)
  %24 = load i32**, i32*** @t4_cpl_handler, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @MPASS(i32 %30)
  %32 = load i32, i32* %4, align 4
  switch i32 %32, label %63 [
    i32 128, label %33
    i32 129, label %39
    i32 131, label %45
    i32 132, label %51
    i32 130, label %57
  ]

33:                                               ; preds = %3
  %34 = load i32*, i32** @set_tcb_rpl_handlers, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = bitcast i32* %37 to i64*
  store i64* %38, i64** %7, align 8
  br label %65

39:                                               ; preds = %3
  %40 = load i32*, i32** @l2t_write_rpl_handlers, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = bitcast i32* %43 to i64*
  store i64* %44, i64** %7, align 8
  br label %65

45:                                               ; preds = %3
  %46 = load i32*, i32** @act_open_rpl_handlers, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = bitcast i32* %49 to i64*
  store i64* %50, i64** %7, align 8
  br label %65

51:                                               ; preds = %3
  %52 = load i32*, i32** @abort_rpl_rss_handlers, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = bitcast i32* %55 to i64*
  store i64* %56, i64** %7, align 8
  br label %65

57:                                               ; preds = %3
  %58 = load i32*, i32** @fw4_ack_handlers, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = bitcast i32* %61 to i64*
  store i64* %62, i64** %7, align 8
  br label %65

63:                                               ; preds = %3
  %64 = call i32 @MPASS(i32 0)
  br label %80

65:                                               ; preds = %57, %51, %45, %39, %33
  %66 = load i32*, i32** %5, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = load i64*, i64** %7, align 8
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br label %72

72:                                               ; preds = %68, %65
  %73 = phi i1 [ true, %65 ], [ %71, %68 ]
  %74 = zext i1 %73 to i32
  %75 = call i32 @MPASS(i32 %74)
  %76 = load i64*, i64** %7, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = ptrtoint i32* %77 to i64
  %79 = call i32 @atomic_store_rel_ptr(i64* %76, i64 %78)
  br label %80

80:                                               ; preds = %72, %63
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
