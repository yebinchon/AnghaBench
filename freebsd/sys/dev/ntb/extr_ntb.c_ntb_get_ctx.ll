; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb.c_ntb_get_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb.c_ntb_get_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_ctx_ops = type { i32 }
%struct.ntb_child = type { i8*, %struct.ntb_ctx_ops* }

@.str = private unnamed_addr constant [6 x i8] c"bogus\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ntb_get_ctx(i32 %0, %struct.ntb_ctx_ops** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ntb_ctx_ops**, align 8
  %5 = alloca %struct.ntb_child*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ntb_ctx_ops** %1, %struct.ntb_ctx_ops*** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ntb_child* @device_get_ivars(i32 %6)
  store %struct.ntb_child* %7, %struct.ntb_child** %5, align 8
  %8 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %9 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %14 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %13, i32 0, i32 1
  %15 = load %struct.ntb_ctx_ops*, %struct.ntb_ctx_ops** %14, align 8
  %16 = icmp ne %struct.ntb_ctx_ops* %15, null
  br label %17

17:                                               ; preds = %12, %2
  %18 = phi i1 [ false, %2 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ntb_ctx_ops**, %struct.ntb_ctx_ops*** %4, align 8
  %22 = icmp ne %struct.ntb_ctx_ops** %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %25 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %24, i32 0, i32 1
  %26 = load %struct.ntb_ctx_ops*, %struct.ntb_ctx_ops** %25, align 8
  %27 = load %struct.ntb_ctx_ops**, %struct.ntb_ctx_ops*** %4, align 8
  store %struct.ntb_ctx_ops* %26, %struct.ntb_ctx_ops** %27, align 8
  br label %28

28:                                               ; preds = %23, %17
  %29 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %30 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  ret i8* %31
}

declare dso_local %struct.ntb_child* @device_get_ivars(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
