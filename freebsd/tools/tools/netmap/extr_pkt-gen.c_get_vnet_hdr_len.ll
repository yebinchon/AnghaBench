; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_get_vnet_hdr_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_get_vnet_hdr_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glob_arg = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nmreq = type { i32, i32, i32, i32 }

@NETMAP_API = common dso_local global i32 0, align 4
@NETMAP_VNET_HDR_GET = common dso_local global i32 0, align 4
@NIOCREGIF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Unable to get virtio-net header length\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Port requires virtio-net header, length = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.glob_arg*)* @get_vnet_hdr_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_vnet_hdr_len(%struct.glob_arg* %0) #0 {
  %2 = alloca %struct.glob_arg*, align 8
  %3 = alloca %struct.nmreq, align 4
  %4 = alloca i32, align 4
  store %struct.glob_arg* %0, %struct.glob_arg** %2, align 8
  %5 = call i32 @memset(%struct.nmreq* %3, i32 0, i32 16)
  %6 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %7 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %3, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @bcopy(i32 %11, i32 %13, i32 4)
  %15 = load i32, i32* @NETMAP_API, align 4
  %16 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %3, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @NETMAP_VNET_HDR_GET, align 4
  %18 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %3, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %20 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NIOCREGIF, align 4
  %23 = call i32 @ioctl(i32 %21, i32 %22, %struct.nmreq* %3)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %42

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %3, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %32 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %34 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %39 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %26, %37, %28
  ret void
}

declare dso_local i32 @memset(%struct.nmreq*, i32, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.nmreq*) #1

declare dso_local i32 @D(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
