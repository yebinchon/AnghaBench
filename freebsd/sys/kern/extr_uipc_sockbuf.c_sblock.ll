; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { i32, i32 }

@SBL_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"sblock: flags invalid (0x%x)\00", align 1
@SBL_WAIT = common dso_local global i32 0, align 4
@SB_NOINTR = common dso_local global i32 0, align 4
@SBL_NOINTR = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sblock(%struct.sockbuf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.sockbuf* %0, %struct.sockbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SBL_VALID, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @KASSERT(i32 %11, i8* %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SBL_WAIT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %2
  %21 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %22 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SB_NOINTR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SBL_NOINTR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27, %20
  %33 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %34 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %33, i32 0, i32 1
  %35 = call i32 @sx_xlock(i32* %34)
  store i32 0, i32* %3, align 4
  br label %48

36:                                               ; preds = %27
  %37 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %38 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %37, i32 0, i32 1
  %39 = call i32 @sx_xlock_sig(i32* %38)
  store i32 %39, i32* %3, align 4
  br label %48

40:                                               ; preds = %2
  %41 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %42 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %41, i32 0, i32 1
  %43 = call i64 @sx_try_xlock(i32* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %45, %36, %32
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @sx_xlock_sig(i32*) #1

declare dso_local i64 @sx_try_xlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
