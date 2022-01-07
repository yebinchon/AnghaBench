; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mpserver_Close.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mpserver_Close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpserver = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32* }

@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s: Failed to remove: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpserver_Close(%struct.mpserver* %0) #0 {
  %2 = alloca %struct.mpserver*, align 8
  store %struct.mpserver* %0, %struct.mpserver** %2, align 8
  %3 = load %struct.mpserver*, %struct.mpserver** %2, align 8
  %4 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.mpserver*, %struct.mpserver** %2, align 8
  %10 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.mpserver*, %struct.mpserver** %2, align 8
  %14 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.mpserver*, %struct.mpserver** %2, align 8
  %17 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %16, i32 0, i32 1
  %18 = call i32 @bundle_SendDatalink(i32* %12, i32 %15, %struct.TYPE_5__* %17)
  %19 = load %struct.mpserver*, %struct.mpserver** %2, align 8
  %20 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load %struct.mpserver*, %struct.mpserver** %2, align 8
  %23 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  br label %56

24:                                               ; preds = %1
  %25 = load %struct.mpserver*, %struct.mpserver** %2, align 8
  %26 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %24
  %30 = load %struct.mpserver*, %struct.mpserver** %2, align 8
  %31 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @close(i32 %32)
  %34 = load %struct.mpserver*, %struct.mpserver** %2, align 8
  %35 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ID0unlink(i32 %37)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %49

40:                                               ; preds = %29
  %41 = load i32, i32* @LogERROR, align 4
  %42 = load %struct.mpserver*, %struct.mpserver** %2, align 8
  %43 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 @strerror(i32 %46)
  %48 = call i32 @log_Printf(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %47)
  br label %49

49:                                               ; preds = %40, %29
  %50 = load %struct.mpserver*, %struct.mpserver** %2, align 8
  %51 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %50, i32 0, i32 1
  %52 = call i32 @memset(%struct.TYPE_5__* %51, i8 signext 0, i32 4)
  %53 = load %struct.mpserver*, %struct.mpserver** %2, align 8
  %54 = getelementptr inbounds %struct.mpserver, %struct.mpserver* %53, i32 0, i32 0
  store i32 -1, i32* %54, align 8
  br label %55

55:                                               ; preds = %49, %24
  br label %56

56:                                               ; preds = %55, %8
  ret void
}

declare dso_local i32 @bundle_SendDatalink(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ID0unlink(i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
