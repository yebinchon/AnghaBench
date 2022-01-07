; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_tcb_common.c_lu_tcbvar.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_tcb_common.c_lu_tcbvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@g_tcb_info = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"lu_tcbvar: bad name %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @lu_tcbvar(i8* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_tcb_info, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %4, align 8
  br label %6

6:                                                ; preds = %30, %1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %6
  %12 = load i8*, i8** %3, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @tcb_strmatch_nc(i8* %12, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %2, align 8
  br label %36

20:                                               ; preds = %11
  %21 = load i8*, i8** %3, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @tcb_strmatch_nc(i8* %21, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %2, align 8
  br label %36

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 1
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %4, align 8
  br label %6

33:                                               ; preds = %6
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @tcb_code_err_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %34)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %36

36:                                               ; preds = %33, %27, %18
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %37
}

declare dso_local i64 @tcb_strmatch_nc(i8*, i32*) #1

declare dso_local i32 @tcb_code_err_exit(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
