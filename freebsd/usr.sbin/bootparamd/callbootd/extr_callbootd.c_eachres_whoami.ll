; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bootparamd/callbootd/extr_callbootd.c_eachres_whoami.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bootparamd/callbootd/extr_callbootd.c_eachres_whoami.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hostent = type { i8* }

@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s answered:\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.sockaddr_in*)* @eachres_whoami to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eachres_whoami(i32* %0, %struct.sockaddr_in* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.sockaddr_in*, align 8
  %5 = alloca %struct.hostent*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %4, align 8
  %6 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %7 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = bitcast i32* %8 to i8*
  %10 = load i32, i32* @AF_INET, align 4
  %11 = call %struct.hostent* @gethostbyaddr(i8* %9, i32 4, i32 %10)
  store %struct.hostent* %11, %struct.hostent** %5, align 8
  %12 = load %struct.hostent*, %struct.hostent** %5, align 8
  %13 = icmp ne %struct.hostent* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.hostent*, %struct.hostent** %5, align 8
  %16 = getelementptr inbounds %struct.hostent, %struct.hostent* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  br label %24

18:                                               ; preds = %2
  %19 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @inet_ntoa(i32 %22)
  br label %24

24:                                               ; preds = %18, %14
  %25 = phi i8* [ %17, %14 ], [ %23, %18 ]
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @printwhoami(i32* %27)
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.hostent* @gethostbyaddr(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @printwhoami(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
