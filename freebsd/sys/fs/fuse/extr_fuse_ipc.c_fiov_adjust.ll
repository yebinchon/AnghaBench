; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fiov_adjust.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fiov_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_iov = type { i64, i64, i8*, i64 }

@fuse_iov_permanent_bufsize = common dso_local global i64 0, align 8
@M_FUSEMSG = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"FUSE: realloc failed\00", align 1
@fuse_iov_credit = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fiov_adjust(%struct.fuse_iov* %0, i64 %1) #0 {
  %3 = alloca %struct.fuse_iov*, align 8
  %4 = alloca i64, align 8
  store %struct.fuse_iov* %0, %struct.fuse_iov** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.fuse_iov*, %struct.fuse_iov** %3, align 8
  %6 = getelementptr inbounds %struct.fuse_iov, %struct.fuse_iov* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* @fuse_iov_permanent_bufsize, align 8
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %59

13:                                               ; preds = %10
  %14 = load %struct.fuse_iov*, %struct.fuse_iov** %3, align 8
  %15 = getelementptr inbounds %struct.fuse_iov, %struct.fuse_iov* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = sub i64 %16, %17
  %19 = load i64, i64* @fuse_iov_permanent_bufsize, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %59

21:                                               ; preds = %13
  %22 = load %struct.fuse_iov*, %struct.fuse_iov** %3, align 8
  %23 = getelementptr inbounds %struct.fuse_iov, %struct.fuse_iov* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %23, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %21, %2
  %28 = load %struct.fuse_iov*, %struct.fuse_iov** %3, align 8
  %29 = getelementptr inbounds %struct.fuse_iov, %struct.fuse_iov* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @FU_AT_LEAST(i64 %31)
  %33 = load i32, i32* @M_FUSEMSG, align 4
  %34 = load i32, i32* @M_WAITOK, align 4
  %35 = load i32, i32* @M_ZERO, align 4
  %36 = or i32 %34, %35
  %37 = call i8* @realloc(i8* %30, i64 %32, i32 %33, i32 %36)
  %38 = load %struct.fuse_iov*, %struct.fuse_iov** %3, align 8
  %39 = getelementptr inbounds %struct.fuse_iov, %struct.fuse_iov* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load %struct.fuse_iov*, %struct.fuse_iov** %3, align 8
  %41 = getelementptr inbounds %struct.fuse_iov, %struct.fuse_iov* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %27
  %45 = call i32 @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %27
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @FU_AT_LEAST(i64 %47)
  %49 = load %struct.fuse_iov*, %struct.fuse_iov** %3, align 8
  %50 = getelementptr inbounds %struct.fuse_iov, %struct.fuse_iov* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* @fuse_iov_credit, align 8
  %52 = load %struct.fuse_iov*, %struct.fuse_iov** %3, align 8
  %53 = getelementptr inbounds %struct.fuse_iov, %struct.fuse_iov* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.fuse_iov*, %struct.fuse_iov** %3, align 8
  %55 = getelementptr inbounds %struct.fuse_iov, %struct.fuse_iov* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @bzero(i8* %56, i64 %57)
  br label %80

59:                                               ; preds = %21, %13, %10
  %60 = load i64, i64* %4, align 8
  %61 = load %struct.fuse_iov*, %struct.fuse_iov** %3, align 8
  %62 = getelementptr inbounds %struct.fuse_iov, %struct.fuse_iov* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ugt i64 %60, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load %struct.fuse_iov*, %struct.fuse_iov** %3, align 8
  %67 = getelementptr inbounds %struct.fuse_iov, %struct.fuse_iov* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.fuse_iov*, %struct.fuse_iov** %3, align 8
  %70 = getelementptr inbounds %struct.fuse_iov, %struct.fuse_iov* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = load i64, i64* %4, align 8
  %74 = load %struct.fuse_iov*, %struct.fuse_iov** %3, align 8
  %75 = getelementptr inbounds %struct.fuse_iov, %struct.fuse_iov* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = sub i64 %73, %76
  %78 = call i32 @bzero(i8* %72, i64 %77)
  br label %79

79:                                               ; preds = %65, %59
  br label %80

80:                                               ; preds = %79, %46
  %81 = load i64, i64* %4, align 8
  %82 = load %struct.fuse_iov*, %struct.fuse_iov** %3, align 8
  %83 = getelementptr inbounds %struct.fuse_iov, %struct.fuse_iov* %82, i32 0, i32 3
  store i64 %81, i64* %83, align 8
  ret void
}

declare dso_local i8* @realloc(i8*, i64, i32, i32) #1

declare dso_local i64 @FU_AT_LEAST(i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bzero(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
