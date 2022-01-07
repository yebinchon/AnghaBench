; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/diskinfo/extr_diskinfo.c_parwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/diskinfo/extr_diskinfo.c_parwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aiocb = type { i32, i64, i64, i32* }

@MAXIOS = common dso_local global i32 0, align 4
@MAXIO = common dso_local global i64 0, align 8
@buf = common dso_local global i32* null, align 8
@EX_IOERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"AIO write submit error\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Sync write error\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"AIO write wait error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64)* @parwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parwrite(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.aiocb*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i32, i32* @MAXIOS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca %struct.aiocb, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %9, align 8
  br label %17

17:                                               ; preds = %51, %3
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @MAXIO, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %60

21:                                               ; preds = %17
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %16, i64 %23
  store %struct.aiocb* %24, %struct.aiocb** %12, align 8
  %25 = load %struct.aiocb*, %struct.aiocb** %12, align 8
  %26 = call i32 @bzero(%struct.aiocb* %25, i32 32)
  %27 = load i32*, i32** @buf, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load %struct.aiocb*, %struct.aiocb** %12, align 8
  %31 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %30, i32 0, i32 3
  store i32* %29, i32** %31, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.aiocb*, %struct.aiocb** %12, align 8
  %34 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %35, %36
  %38 = load %struct.aiocb*, %struct.aiocb** %12, align 8
  %39 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* @MAXIO, align 8
  %41 = load %struct.aiocb*, %struct.aiocb** %12, align 8
  %42 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load %struct.aiocb*, %struct.aiocb** %12, align 8
  %44 = call i32 @aio_write(%struct.aiocb* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %21
  %48 = load i32, i32* @EX_IOERR, align 4
  %49 = call i32 @err(i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %21
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  %54 = load i64, i64* @MAXIO, align 8
  %55 = load i64, i64* %5, align 8
  %56 = sub i64 %55, %54
  store i64 %56, i64* %5, align 8
  %57 = load i64, i64* @MAXIO, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %9, align 8
  br label %17

60:                                               ; preds = %17
  %61 = load i32, i32* %4, align 4
  %62 = load i32*, i32** @buf, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %9, align 8
  %68 = add i64 %66, %67
  %69 = call i32 @pwrite(i32 %61, i32* %64, i64 %65, i64 %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %60
  %73 = load i32, i32* @EX_IOERR, align 4
  %74 = call i32 @err(i32 %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %60
  br label %76

76:                                               ; preds = %87, %75
  %77 = load i32, i32* %10, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = call i32 @aio_waitcomplete(%struct.aiocb** %12, i32* null)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* @EX_IOERR, align 4
  %85 = call i32 @err(i32 %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %79
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %10, align 4
  br label %76

90:                                               ; preds = %76
  %91 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %91)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bzero(%struct.aiocb*, i32) #2

declare dso_local i32 @aio_write(%struct.aiocb*) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @pwrite(i32, i32*, i64, i64) #2

declare dso_local i32 @aio_waitcomplete(%struct.aiocb**, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
