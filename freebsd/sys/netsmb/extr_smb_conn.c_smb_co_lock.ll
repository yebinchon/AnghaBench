; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_co_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_conn.c_smb_co_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_connobj = type { i32, i32, i32, i32, i32* }

@curthread = common dso_local global i32* null, align 8
@SMBO_GONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_co_lock(%struct.smb_connobj* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smb_connobj*, align 8
  store %struct.smb_connobj* %0, %struct.smb_connobj** %3, align 8
  %4 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %5 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %4, i32 0, i32 1
  %6 = call i32* @sx_xholder(i32* %5)
  %7 = load i32*, i32** @curthread, align 8
  %8 = icmp eq i32* %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @MPASS(i32 %9)
  br label %11

11:                                               ; preds = %40, %1
  %12 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %13 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SMBO_GONE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %2, align 4
  br label %46

20:                                               ; preds = %11
  %21 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %22 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32*, i32** @curthread, align 8
  %27 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %28 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %27, i32 0, i32 4
  store i32* %26, i32** %28, align 8
  store i32 0, i32* %2, align 4
  br label %46

29:                                               ; preds = %20
  %30 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %31 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = load i32*, i32** @curthread, align 8
  %34 = icmp eq i32* %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %37 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  store i32 0, i32* %2, align 4
  br label %46

40:                                               ; preds = %29
  %41 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %42 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %41, i32 0, i32 2
  %43 = load %struct.smb_connobj*, %struct.smb_connobj** %3, align 8
  %44 = getelementptr inbounds %struct.smb_connobj, %struct.smb_connobj* %43, i32 0, i32 1
  %45 = call i32 @cv_wait(i32* %42, i32* %44)
  br label %11

46:                                               ; preds = %35, %25, %18
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32* @sx_xholder(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
