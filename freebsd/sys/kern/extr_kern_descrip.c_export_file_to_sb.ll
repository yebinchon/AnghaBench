; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_export_file_to_sb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_export_file_to_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.export_fd_buf = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32*, %struct.export_fd_buf*)* @export_file_to_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @export_file_to_sb(%struct.file* %0, i32 %1, i32* %2, %struct.export_fd_buf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.export_fd_buf*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.export_fd_buf* %3, %struct.export_fd_buf** %9, align 8
  %11 = load %struct.export_fd_buf*, %struct.export_fd_buf** %9, align 8
  %12 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %40

16:                                               ; preds = %4
  %17 = load %struct.file*, %struct.file** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.export_fd_buf*, %struct.export_fd_buf** %9, align 8
  %21 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %20, i32 0, i32 3
  %22 = load %struct.export_fd_buf*, %struct.export_fd_buf** %9, align 8
  %23 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.export_fd_buf*, %struct.export_fd_buf** %9, align 8
  %26 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @export_file_to_kinfo(%struct.file* %17, i32 %18, i32* %19, i32* %21, i32 %24, i32 %27)
  %29 = load %struct.export_fd_buf*, %struct.export_fd_buf** %9, align 8
  %30 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @FILEDESC_SUNLOCK(i32 %31)
  %33 = load %struct.export_fd_buf*, %struct.export_fd_buf** %9, align 8
  %34 = call i32 @export_kinfo_to_sb(%struct.export_fd_buf* %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.export_fd_buf*, %struct.export_fd_buf** %9, align 8
  %36 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @FILEDESC_SLOCK(i32 %37)
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %16, %15
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @export_file_to_kinfo(%struct.file*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @FILEDESC_SUNLOCK(i32) #1

declare dso_local i32 @export_kinfo_to_sb(%struct.export_fd_buf*) #1

declare dso_local i32 @FILEDESC_SLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
