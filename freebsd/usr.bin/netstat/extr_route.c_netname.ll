; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_route.c_netname.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_route.c_netname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@INADDR_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @netname(%struct.sockaddr* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %6 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %7 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %32 [
    i32 129, label %9
  ]

9:                                                ; preds = %2
  %10 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %11 = icmp ne %struct.sockaddr* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %14 = call %struct.TYPE_4__* @satosin(%struct.sockaddr* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %19 = call %struct.TYPE_4__* @satosin(%struct.sockaddr* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @netname4(i32 %17, i32 %22)
  store i8* %23, i8** %3, align 8
  br label %33

24:                                               ; preds = %9
  %25 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %26 = call %struct.TYPE_4__* @satosin(%struct.sockaddr* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @INADDR_ANY, align 4
  %31 = call i8* @netname4(i32 %29, i32 %30)
  store i8* %31, i8** %3, align 8
  br label %33

32:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %33

33:                                               ; preds = %32, %24, %12
  %34 = load i8*, i8** %3, align 8
  ret i8* %34
}

declare dso_local i8* @netname4(i32, i32) #1

declare dso_local %struct.TYPE_4__* @satosin(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
