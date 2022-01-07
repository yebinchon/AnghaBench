; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_pollscan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_pollscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.filedesc* }
%struct.filedesc = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.file* }
%struct.file = type { i32 }
%struct.pollfd = type { i64, i32, i32 }

@POLLNVAL = common dso_local global i8* null, align 8
@POLLHUP = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@cap_event_rights = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.pollfd*, i32)* @pollscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pollscan(%struct.thread* %0, %struct.pollfd* %1, i32 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.pollfd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.filedesc*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.pollfd* %1, %struct.pollfd** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.thread*, %struct.thread** %4, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.filedesc*, %struct.filedesc** %14, align 8
  store %struct.filedesc* %15, %struct.filedesc** %7, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %17 = call i32 @FILEDESC_SLOCK(%struct.filedesc* %16)
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %104, %3
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %109

22:                                               ; preds = %18
  %23 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %24 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %27 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ugt i64 %25, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = load i8*, i8** @POLLNVAL, align 8
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %34 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %103

37:                                               ; preds = %22
  %38 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %39 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %44 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %43, i32 0, i32 1
  store i32 0, i32* %44, align 8
  br label %102

45:                                               ; preds = %37
  %46 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %47 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %50 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.file*, %struct.file** %53, align 8
  store %struct.file* %54, %struct.file** %8, align 8
  %55 = load %struct.file*, %struct.file** %8, align 8
  %56 = icmp eq %struct.file* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %45
  %58 = load i8*, i8** @POLLNVAL, align 8
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %61 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %101

64:                                               ; preds = %45
  %65 = load %struct.thread*, %struct.thread** %4, align 8
  %66 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %67 = call i32 @selfdalloc(%struct.thread* %65, %struct.pollfd* %66)
  %68 = load %struct.file*, %struct.file** %8, align 8
  %69 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %70 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.thread*, %struct.thread** %4, align 8
  %73 = getelementptr inbounds %struct.thread, %struct.thread* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.thread*, %struct.thread** %4, align 8
  %76 = call i32 @fo_poll(%struct.file* %68, i32 %71, i32 %74, %struct.thread* %75)
  %77 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %78 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %80 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @POLLHUP, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %64
  %86 = load i32, i32* @POLLOUT, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %89 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %85, %64
  %93 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %94 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %97, %92
  br label %101

101:                                              ; preds = %100, %57
  br label %102

102:                                              ; preds = %101, %42
  br label %103

103:                                              ; preds = %102, %30
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  %107 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %108 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %107, i32 1
  store %struct.pollfd* %108, %struct.pollfd** %5, align 8
  br label %18

109:                                              ; preds = %18
  %110 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %111 = call i32 @FILEDESC_SUNLOCK(%struct.filedesc* %110)
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.thread*, %struct.thread** %4, align 8
  %114 = getelementptr inbounds %struct.thread, %struct.thread* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 %112, i32* %116, align 4
  ret i32 0
}

declare dso_local i32 @FILEDESC_SLOCK(%struct.filedesc*) #1

declare dso_local i32 @selfdalloc(%struct.thread*, %struct.pollfd*) #1

declare dso_local i32 @fo_poll(%struct.file*, i32, i32, %struct.thread*) #1

declare dso_local i32 @FILEDESC_SUNLOCK(%struct.filedesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
