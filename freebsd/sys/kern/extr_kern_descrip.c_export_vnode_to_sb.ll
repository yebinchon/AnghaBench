; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_export_vnode_to_sb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_export_vnode_to_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.export_fd_buf = type { i64, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i32, i32, %struct.export_fd_buf*)* @export_vnode_to_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @export_vnode_to_sb(%struct.vnode* %0, i32 %1, i32 %2, %struct.export_fd_buf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.export_fd_buf*, align 8
  %10 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.export_fd_buf* %3, %struct.export_fd_buf** %9, align 8
  %11 = load %struct.export_fd_buf*, %struct.export_fd_buf** %9, align 8
  %12 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %49

16:                                               ; preds = %4
  %17 = load %struct.export_fd_buf*, %struct.export_fd_buf** %9, align 8
  %18 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.export_fd_buf*, %struct.export_fd_buf** %9, align 8
  %23 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @FILEDESC_SUNLOCK(i32* %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.vnode*, %struct.vnode** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.export_fd_buf*, %struct.export_fd_buf** %9, align 8
  %31 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %30, i32 0, i32 3
  %32 = load %struct.export_fd_buf*, %struct.export_fd_buf** %9, align 8
  %33 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @export_vnode_to_kinfo(%struct.vnode* %27, i32 %28, i32 %29, i32* %31, i32 %34)
  %36 = load %struct.export_fd_buf*, %struct.export_fd_buf** %9, align 8
  %37 = call i32 @export_kinfo_to_sb(%struct.export_fd_buf* %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.export_fd_buf*, %struct.export_fd_buf** %9, align 8
  %39 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %26
  %43 = load %struct.export_fd_buf*, %struct.export_fd_buf** %9, align 8
  %44 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @FILEDESC_SLOCK(i32* %45)
  br label %47

47:                                               ; preds = %42, %26
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %15
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @FILEDESC_SUNLOCK(i32*) #1

declare dso_local i32 @export_vnode_to_kinfo(%struct.vnode*, i32, i32, i32*, i32) #1

declare dso_local i32 @export_kinfo_to_sb(%struct.export_fd_buf*) #1

declare dso_local i32 @FILEDESC_SLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
