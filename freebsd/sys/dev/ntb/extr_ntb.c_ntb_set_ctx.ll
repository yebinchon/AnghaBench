; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb.c_ntb_set_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb.c_ntb_set_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_ctx_ops = type { i32 (i8*)* }
%struct.ntb_child = type { i32, %struct.ntb_ctx_ops*, i8* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntb_set_ctx(i32 %0, i8* %1, %struct.ntb_ctx_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ntb_ctx_ops*, align 8
  %8 = alloca %struct.ntb_child*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.ntb_ctx_ops* %2, %struct.ntb_ctx_ops** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.ntb_child* @device_get_ivars(i32 %9)
  store %struct.ntb_child* %10, %struct.ntb_child** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load %struct.ntb_ctx_ops*, %struct.ntb_ctx_ops** %7, align 8
  %15 = icmp eq %struct.ntb_ctx_ops* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %52

18:                                               ; preds = %13
  %19 = load %struct.ntb_child*, %struct.ntb_child** %8, align 8
  %20 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %19, i32 0, i32 0
  %21 = call i32 @rm_wlock(i32* %20)
  %22 = load %struct.ntb_child*, %struct.ntb_child** %8, align 8
  %23 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %22, i32 0, i32 1
  %24 = load %struct.ntb_ctx_ops*, %struct.ntb_ctx_ops** %23, align 8
  %25 = icmp ne %struct.ntb_ctx_ops* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load %struct.ntb_child*, %struct.ntb_child** %8, align 8
  %28 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %27, i32 0, i32 0
  %29 = call i32 @rm_wunlock(i32* %28)
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %4, align 4
  br label %52

31:                                               ; preds = %18
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.ntb_child*, %struct.ntb_child** %8, align 8
  %34 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.ntb_ctx_ops*, %struct.ntb_ctx_ops** %7, align 8
  %36 = load %struct.ntb_child*, %struct.ntb_child** %8, align 8
  %37 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %36, i32 0, i32 1
  store %struct.ntb_ctx_ops* %35, %struct.ntb_ctx_ops** %37, align 8
  %38 = load %struct.ntb_ctx_ops*, %struct.ntb_ctx_ops** %7, align 8
  %39 = getelementptr inbounds %struct.ntb_ctx_ops, %struct.ntb_ctx_ops* %38, i32 0, i32 0
  %40 = load i32 (i8*)*, i32 (i8*)** %39, align 8
  %41 = icmp ne i32 (i8*)* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %31
  %43 = load %struct.ntb_ctx_ops*, %struct.ntb_ctx_ops** %7, align 8
  %44 = getelementptr inbounds %struct.ntb_ctx_ops, %struct.ntb_ctx_ops* %43, i32 0, i32 0
  %45 = load i32 (i8*)*, i32 (i8*)** %44, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 %45(i8* %46)
  br label %48

48:                                               ; preds = %42, %31
  %49 = load %struct.ntb_child*, %struct.ntb_child** %8, align 8
  %50 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %49, i32 0, i32 0
  %51 = call i32 @rm_wunlock(i32* %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %26, %16
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.ntb_child* @device_get_ivars(i32) #1

declare dso_local i32 @rm_wlock(i32*) #1

declare dso_local i32 @rm_wunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
