; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in.c_in_socktrim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in.c_in_socktrim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr_in*)* @in_socktrim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in_socktrim(%struct.sockaddr_in* %0) #0 {
  %2 = alloca %struct.sockaddr_in*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %2, align 8
  %5 = load %struct.sockaddr_in*, %struct.sockaddr_in** %2, align 8
  %6 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  %7 = bitcast i32* %6 to i8*
  store i8* %7, i8** %3, align 8
  %8 = load %struct.sockaddr_in*, %struct.sockaddr_in** %2, align 8
  %9 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = bitcast i32* %10 to i8*
  store i8* %11, i8** %4, align 8
  %12 = load %struct.sockaddr_in*, %struct.sockaddr_in** %2, align 8
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %34, %1
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 -1
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = icmp uge i8* %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.sockaddr_in*, %struct.sockaddr_in** %2, align 8
  %26 = bitcast %struct.sockaddr_in* %25 to i8*
  %27 = ptrtoint i8* %24 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = add nsw i64 %29, 1
  %31 = trunc i64 %30 to i32
  %32 = load %struct.sockaddr_in*, %struct.sockaddr_in** %2, align 8
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %35

34:                                               ; preds = %19
  br label %14

35:                                               ; preds = %23, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
