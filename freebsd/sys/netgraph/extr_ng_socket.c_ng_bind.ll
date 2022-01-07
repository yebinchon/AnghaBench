; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_socket.c_ng_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_socket.c_ng_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.ngpcb = type { %struct.ngsock* }
%struct.ngsock = type { i32 }
%struct.sockaddr_ng = type { i32, i8* }

@TRAP_ERROR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NG_NODESIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.ngpcb*)* @ng_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_bind(%struct.sockaddr* %0, %struct.ngpcb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.ngpcb*, align 8
  %6 = alloca %struct.ngsock*, align 8
  %7 = alloca %struct.sockaddr_ng*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store %struct.ngpcb* %1, %struct.ngpcb** %5, align 8
  %8 = load %struct.ngpcb*, %struct.ngpcb** %5, align 8
  %9 = getelementptr inbounds %struct.ngpcb, %struct.ngpcb* %8, i32 0, i32 0
  %10 = load %struct.ngsock*, %struct.ngsock** %9, align 8
  store %struct.ngsock* %10, %struct.ngsock** %6, align 8
  %11 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %12 = bitcast %struct.sockaddr* %11 to %struct.sockaddr_ng*
  store %struct.sockaddr_ng* %12, %struct.sockaddr_ng** %7, align 8
  %13 = load %struct.ngsock*, %struct.ngsock** %6, align 8
  %14 = icmp eq %struct.ngsock* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @TRAP_ERROR, align 4
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %62

18:                                               ; preds = %2
  %19 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %7, align 8
  %20 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %51, label %23

23:                                               ; preds = %18
  %24 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %7, align 8
  %25 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @NG_NODESIZ, align 4
  %28 = add nsw i32 %27, 2
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %51, label %30

30:                                               ; preds = %23
  %31 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %7, align 8
  %32 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %30
  %39 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %7, align 8
  %40 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %7, align 8
  %43 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %41, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %38, %30, %23, %18
  %52 = load i32, i32* @TRAP_ERROR, align 4
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %3, align 4
  br label %62

54:                                               ; preds = %38
  %55 = load %struct.ngsock*, %struct.ngsock** %6, align 8
  %56 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %7, align 8
  %59 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @ng_name_node(i32 %57, i8* %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %54, %51, %15
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @ng_name_node(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
