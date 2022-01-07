; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_bpf_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_bpf_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_hdr = type { i32, i32 }

@bpf_input.buf = internal global [4096 x i8] zeroinitializer, align 16
@bpf_s = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"read()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bpf_input() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bpf_hdr*, align 8
  %3 = alloca i8*, align 8
  %4 = load i32, i32* @bpf_s, align 4
  %5 = call i32 @read(i32 %4, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @bpf_input.buf, i64 0, i64 0), i32 4096)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @die(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %0
  store %struct.bpf_hdr* bitcast ([4096 x i8]* @bpf_input.buf to %struct.bpf_hdr*), %struct.bpf_hdr** %2, align 8
  %11 = load %struct.bpf_hdr*, %struct.bpf_hdr** %2, align 8
  %12 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %1, align 4
  %15 = sub nsw i32 %14, %13
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load %struct.bpf_hdr*, %struct.bpf_hdr** %2, align 8
  %18 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %10
  %22 = load i32, i32* %1, align 4
  %23 = load %struct.bpf_hdr*, %struct.bpf_hdr** %2, align 8
  %24 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.bpf_hdr*, %struct.bpf_hdr** %2, align 8
  %30 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %21, %10
  %33 = load %struct.bpf_hdr*, %struct.bpf_hdr** %2, align 8
  %34 = bitcast %struct.bpf_hdr* %33 to i8*
  %35 = load %struct.bpf_hdr*, %struct.bpf_hdr** %2, align 8
  %36 = getelementptr inbounds %struct.bpf_hdr, %struct.bpf_hdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %34, i64 %38
  store i8* %39, i8** %3, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @radiotap(i8* %40, i32 %41)
  ret void
}

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @radiotap(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
