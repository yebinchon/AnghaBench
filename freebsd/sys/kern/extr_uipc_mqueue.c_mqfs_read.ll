; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_read_args = type { %struct.uio*, %struct.vnode* }
%struct.uio = type { i32 }
%struct.vnode = type { i64 }
%struct.mqueue = type { i32, i32, i32, i32 }

@VREG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"QSIZE:%-10ld MAXMSG:%-10ld CURMSG:%-10ld MSGSIZE:%-10ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_read_args*)* @mqfs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqfs_read(%struct.vop_read_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_read_args*, align 8
  %4 = alloca [80 x i8], align 16
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca %struct.mqueue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vop_read_args* %0, %struct.vop_read_args** %3, align 8
  %10 = load %struct.vop_read_args*, %struct.vop_read_args** %3, align 8
  %11 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %10, i32 0, i32 1
  %12 = load %struct.vnode*, %struct.vnode** %11, align 8
  store %struct.vnode* %12, %struct.vnode** %5, align 8
  %13 = load %struct.vop_read_args*, %struct.vop_read_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %13, i32 0, i32 0
  %15 = load %struct.uio*, %struct.uio** %14, align 8
  store %struct.uio* %15, %struct.uio** %6, align 8
  %16 = load %struct.vnode*, %struct.vnode** %5, align 8
  %17 = getelementptr inbounds %struct.vnode, %struct.vnode* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VREG, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %2, align 4
  br label %48

23:                                               ; preds = %1
  %24 = load %struct.vnode*, %struct.vnode** %5, align 8
  %25 = call %struct.mqueue* @VTOMQ(%struct.vnode* %24)
  store %struct.mqueue* %25, %struct.mqueue** %7, align 8
  %26 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %27 = load %struct.mqueue*, %struct.mqueue** %7, align 8
  %28 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mqueue*, %struct.mqueue** %7, align 8
  %31 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mqueue*, %struct.mqueue** %7, align 8
  %34 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mqueue*, %struct.mqueue** %7, align 8
  %37 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @snprintf(i8* %26, i32 80, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32, i32 %35, i32 %38)
  %40 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 79
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %42 = call i32 @strlen(i8* %41)
  store i32 %42, i32* %8, align 4
  %43 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.uio*, %struct.uio** %6, align 8
  %46 = call i32 @uiomove_frombuf(i8* %43, i32 %44, %struct.uio* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %23, %21
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.mqueue* @VTOMQ(%struct.vnode*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @uiomove_frombuf(i8*, i32, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
