; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_export_kinfo_to_sb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_export_kinfo_to_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.export_fd_buf = type { i32, i32, %struct.kinfo_file }
%struct.kinfo_file = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.export_fd_buf*)* @export_kinfo_to_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @export_kinfo_to_sb(%struct.export_fd_buf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.export_fd_buf*, align 8
  %4 = alloca %struct.kinfo_file*, align 8
  store %struct.export_fd_buf* %0, %struct.export_fd_buf** %3, align 8
  %5 = load %struct.export_fd_buf*, %struct.export_fd_buf** %3, align 8
  %6 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %5, i32 0, i32 2
  store %struct.kinfo_file* %6, %struct.kinfo_file** %4, align 8
  %7 = load %struct.export_fd_buf*, %struct.export_fd_buf** %3, align 8
  %8 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %33

11:                                               ; preds = %1
  %12 = load %struct.export_fd_buf*, %struct.export_fd_buf** %3, align 8
  %13 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = load %struct.kinfo_file*, %struct.kinfo_file** %4, align 8
  %17 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load %struct.export_fd_buf*, %struct.export_fd_buf** %3, align 8
  %22 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  store i32 0, i32* %2, align 4
  br label %48

23:                                               ; preds = %11
  %24 = load %struct.kinfo_file*, %struct.kinfo_file** %4, align 8
  %25 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.export_fd_buf*, %struct.export_fd_buf** %3, align 8
  %28 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 8
  br label %33

33:                                               ; preds = %23, %1
  %34 = load %struct.export_fd_buf*, %struct.export_fd_buf** %3, align 8
  %35 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.kinfo_file*, %struct.kinfo_file** %4, align 8
  %38 = load %struct.kinfo_file*, %struct.kinfo_file** %4, align 8
  %39 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @sbuf_bcat(i32 %36, %struct.kinfo_file* %37, i64 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %46

44:                                               ; preds = %33
  %45 = load i32, i32* @ENOMEM, align 4
  br label %46

46:                                               ; preds = %44, %43
  %47 = phi i32 [ 0, %43 ], [ %45, %44 ]
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %20
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @sbuf_bcat(i32, %struct.kinfo_file*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
