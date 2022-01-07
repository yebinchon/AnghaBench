; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_netcmds.c_showports.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_netcmds.c_showports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pitem = type { i32, i32 }
%struct.servent = type { i32 }

@ports = common dso_local global %struct.pitem* null, align 8
@nports = common dso_local global i32 0, align 4
@protos = common dso_local global i32 0, align 4
@TCP = common dso_local global i32 0, align 4
@UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @showports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showports() #0 {
  %1 = alloca %struct.pitem*, align 8
  %2 = alloca %struct.servent*, align 8
  %3 = load %struct.pitem*, %struct.pitem** @ports, align 8
  store %struct.pitem* %3, %struct.pitem** %1, align 8
  br label %4

4:                                                ; preds = %50, %0
  %5 = load %struct.pitem*, %struct.pitem** %1, align 8
  %6 = load %struct.pitem*, %struct.pitem** @ports, align 8
  %7 = load i32, i32* @nports, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.pitem, %struct.pitem* %6, i64 %8
  %10 = icmp ult %struct.pitem* %5, %9
  br i1 %10, label %11, label %53

11:                                               ; preds = %4
  %12 = load %struct.pitem*, %struct.pitem** %1, align 8
  %13 = getelementptr inbounds %struct.pitem, %struct.pitem* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @protos, align 4
  %16 = load i32, i32* @TCP, align 4
  %17 = load i32, i32* @UDP, align 4
  %18 = or i32 %16, %17
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %27

21:                                               ; preds = %11
  %22 = load i32, i32* @protos, align 4
  %23 = load i32, i32* @TCP, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  br label %27

27:                                               ; preds = %21, %20
  %28 = phi i8* [ null, %20 ], [ %26, %21 ]
  %29 = call %struct.servent* @getservbyport(i32 %14, i8* %28)
  store %struct.servent* %29, %struct.servent** %2, align 8
  %30 = load %struct.pitem*, %struct.pitem** %1, align 8
  %31 = getelementptr inbounds %struct.pitem, %struct.pitem* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  %35 = call i32 @addch(i8 signext 33)
  br label %36

36:                                               ; preds = %34, %27
  %37 = load %struct.servent*, %struct.servent** %2, align 8
  %38 = icmp ne %struct.servent* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.servent*, %struct.servent** %2, align 8
  %41 = getelementptr inbounds %struct.servent, %struct.servent* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @printw(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %49

44:                                               ; preds = %36
  %45 = load %struct.pitem*, %struct.pitem** %1, align 8
  %46 = getelementptr inbounds %struct.pitem, %struct.pitem* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @printw(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %44, %39
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.pitem*, %struct.pitem** %1, align 8
  %52 = getelementptr inbounds %struct.pitem, %struct.pitem* %51, i32 1
  store %struct.pitem* %52, %struct.pitem** %1, align 8
  br label %4

53:                                               ; preds = %4
  ret void
}

declare dso_local %struct.servent* @getservbyport(i32, i8*) #1

declare dso_local i32 @addch(i8 signext) #1

declare dso_local i32 @printw(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
