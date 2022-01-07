; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/usbdump/extr_usbdump.c_fix_packets.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/usbdump/extr_usbdump.c_fix_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.header_32 = type { i32, i32, i8*, i8*, i8*, i8* }
%struct.bpf_hdr = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid header length %d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Invalid length\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @fix_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_packets(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.header_32, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_hdr*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32*, i32** %3, align 8
  store i32* %11, i32** %6, align 8
  br label %12

12:                                               ; preds = %101, %2
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = icmp ult i32* %13, %17
  br i1 %18, label %19, label %103

19:                                               ; preds = %12
  %20 = load i32*, i32** %6, align 8
  %21 = bitcast i32* %20 to %struct.bpf_hdr*
  store %struct.bpf_hdr* %21, %struct.bpf_hdr** %10, align 8
  %22 = load %struct.bpf_hdr*, %struct.bpf_hdr** %10, align 8
  %23 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @htole32(i32 %25)
  %27 = getelementptr inbounds %struct.header_32, %struct.header_32* %5, i32 0, i32 5
  store i8* %26, i8** %27, align 8
  %28 = load %struct.bpf_hdr*, %struct.bpf_hdr** %10, align 8
  %29 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @htole32(i32 %31)
  %33 = getelementptr inbounds %struct.header_32, %struct.header_32* %5, i32 0, i32 4
  store i8* %32, i8** %33, align 8
  %34 = load %struct.bpf_hdr*, %struct.bpf_hdr** %10, align 8
  %35 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @htole32(i32 %36)
  %38 = getelementptr inbounds %struct.header_32, %struct.header_32* %5, i32 0, i32 3
  store i8* %37, i8** %38, align 8
  %39 = load %struct.bpf_hdr*, %struct.bpf_hdr** %10, align 8
  %40 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @htole32(i32 %41)
  %43 = getelementptr inbounds %struct.header_32, %struct.header_32* %5, i32 0, i32 2
  store i8* %42, i8** %43, align 8
  %44 = load %struct.bpf_hdr*, %struct.bpf_hdr** %10, align 8
  %45 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.header_32, %struct.header_32* %5, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = call i32 @BPF_WORDALIGN(i32 1)
  %49 = getelementptr inbounds %struct.header_32, %struct.header_32* %5, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load %struct.bpf_hdr*, %struct.bpf_hdr** %10, align 8
  %51 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %8, align 4
  %53 = load %struct.bpf_hdr*, %struct.bpf_hdr** %10, align 8
  %54 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp uge i64 %57, 40
  br i1 %58, label %59, label %82

59:                                               ; preds = %19
  %60 = load i32, i32* %8, align 4
  %61 = icmp sle i32 %60, 255
  br i1 %61, label %62, label %82

62:                                               ; preds = %59
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = icmp ule i32* %66, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %62
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @memcpy(i32* %73, %struct.header_32* %5, i32 40)
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 40
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = sub i64 %78, 40
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memset(i32* %76, i32 0, i32 %80)
  br label %86

82:                                               ; preds = %62, %59, %19
  %83 = load i32, i32* @EXIT_FAILURE, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 (i32, i8*, ...) @err(i32 %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %82, %72
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %88, %89
  %91 = call i32 @BPF_WORDALIGN(i32 %90)
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %87, i64 %92
  store i32* %93, i32** %7, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = icmp ule i32* %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %86
  %98 = load i32, i32* @EXIT_FAILURE, align 4
  %99 = call i32 (i32, i8*, ...) @err(i32 %98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %86
  br label %101

101:                                              ; preds = %100
  %102 = load i32*, i32** %7, align 8
  store i32* %102, i32** %6, align 8
  br label %12

103:                                              ; preds = %12
  ret void
}

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @BPF_WORDALIGN(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.header_32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
