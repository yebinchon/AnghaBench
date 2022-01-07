; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ksocket.c_ng_parse_generic_sockdata_getLength.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ksocket.c_ng_parse_generic_sockdata_getLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_parse_type = type { i32 }
%struct.sockaddr = type { i32* }

@SADATA_OFFSET = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ng_parse_type*, i32*, i32*)* @ng_parse_generic_sockdata_getLength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_parse_generic_sockdata_getLength(%struct.ng_parse_type* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.ng_parse_type*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  store %struct.ng_parse_type* %0, %struct.ng_parse_type** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load i32*, i32** @SADATA_OFFSET, align 8
  %10 = ptrtoint i32* %8 to i64
  %11 = ptrtoint i32* %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 4
  %14 = inttoptr i64 %13 to %struct.sockaddr*
  store %struct.sockaddr* %14, %struct.sockaddr** %7, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %16 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32*, i32** @SADATA_OFFSET, align 8
  %19 = icmp ult i32* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %30

21:                                               ; preds = %3
  %22 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %23 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32*, i32** @SADATA_OFFSET, align 8
  %26 = ptrtoint i32* %24 to i64
  %27 = ptrtoint i32* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 4
  br label %30

30:                                               ; preds = %21, %20
  %31 = phi i64 [ 0, %20 ], [ %29, %21 ]
  %32 = trunc i64 %31 to i32
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
