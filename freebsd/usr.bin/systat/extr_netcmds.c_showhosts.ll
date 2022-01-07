; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_netcmds.c_showhosts.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_netcmds.c_showhosts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hitem = type { i32, i32 }
%struct.hostent = type { i8* }

@hosts = common dso_local global %struct.hitem* null, align 8
@nhosts = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @showhosts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showhosts() #0 {
  %1 = alloca %struct.hitem*, align 8
  %2 = alloca %struct.hostent*, align 8
  %3 = load %struct.hitem*, %struct.hitem** @hosts, align 8
  store %struct.hitem* %3, %struct.hitem** %1, align 8
  br label %4

4:                                                ; preds = %39, %0
  %5 = load %struct.hitem*, %struct.hitem** %1, align 8
  %6 = load %struct.hitem*, %struct.hitem** @hosts, align 8
  %7 = load i32, i32* @nhosts, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.hitem, %struct.hitem* %6, i64 %8
  %10 = icmp ult %struct.hitem* %5, %9
  br i1 %10, label %11, label %42

11:                                               ; preds = %4
  %12 = load %struct.hitem*, %struct.hitem** %1, align 8
  %13 = getelementptr inbounds %struct.hitem, %struct.hitem* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to i8*
  %15 = load i32, i32* @AF_INET, align 4
  %16 = call %struct.hostent* @gethostbyaddr(i8* %14, i32 4, i32 %15)
  store %struct.hostent* %16, %struct.hostent** %2, align 8
  %17 = load %struct.hitem*, %struct.hitem** %1, align 8
  %18 = getelementptr inbounds %struct.hitem, %struct.hitem* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %11
  %22 = call i32 @addch(i8 signext 33)
  br label %23

23:                                               ; preds = %21, %11
  %24 = load %struct.hostent*, %struct.hostent** %2, align 8
  %25 = icmp ne %struct.hostent* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.hostent*, %struct.hostent** %2, align 8
  %28 = getelementptr inbounds %struct.hostent, %struct.hostent* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  br label %36

30:                                               ; preds = %23
  %31 = load %struct.hitem*, %struct.hitem** %1, align 8
  %32 = getelementptr inbounds %struct.hitem, %struct.hitem* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @inet_ntoa(i32 %33)
  %35 = inttoptr i64 %34 to i8*
  br label %36

36:                                               ; preds = %30, %26
  %37 = phi i8* [ %29, %26 ], [ %35, %30 ]
  %38 = call i32 @printw(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %36
  %40 = load %struct.hitem*, %struct.hitem** %1, align 8
  %41 = getelementptr inbounds %struct.hitem, %struct.hitem* %40, i32 1
  store %struct.hitem* %41, %struct.hitem** %1, align 8
  br label %4

42:                                               ; preds = %4
  ret void
}

declare dso_local %struct.hostent* @gethostbyaddr(i8*, i32, i32) #1

declare dso_local i32 @addch(i8 signext) #1

declare dso_local i32 @printw(i8*, i8*) #1

declare dso_local i64 @inet_ntoa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
