; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_udp_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_udp_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type opaque
%struct.ippseudo = type { i8, i8, i32, i32, i64 }

@.str = private unnamed_addr constant [9 x i8] c"malloc()\00", align 1
@IPPROTO_UDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_checksum(i8* %0, i32 %1, %struct.in_addr* %2, %struct.in_addr* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.in_addr*, align 8
  %8 = alloca %struct.in_addr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ippseudo*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.in_addr* %2, %struct.in_addr** %7, align 8
  store %struct.in_addr* %3, %struct.in_addr** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = add i64 %12, 24
  %14 = trunc i64 %13 to i32
  %15 = call i64 @malloc(i32 %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %4
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.ippseudo*
  store %struct.ippseudo* %23, %struct.ippseudo** %10, align 8
  %24 = load %struct.ippseudo*, %struct.ippseudo** %10, align 8
  %25 = getelementptr inbounds %struct.ippseudo, %struct.ippseudo* %24, i32 0, i32 0
  %26 = load %struct.in_addr*, %struct.in_addr** %7, align 8
  %27 = bitcast %struct.in_addr* %26 to i8*
  %28 = call i32 @memcpy(i8* %25, i8* %27, i32 4)
  %29 = load %struct.ippseudo*, %struct.ippseudo** %10, align 8
  %30 = getelementptr inbounds %struct.ippseudo, %struct.ippseudo* %29, i32 0, i32 1
  %31 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %32 = bitcast %struct.in_addr* %31 to i8*
  %33 = call i32 @memcpy(i8* %30, i8* %32, i32 4)
  %34 = load %struct.ippseudo*, %struct.ippseudo** %10, align 8
  %35 = getelementptr inbounds %struct.ippseudo, %struct.ippseudo* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @IPPROTO_UDP, align 4
  %37 = load %struct.ippseudo*, %struct.ippseudo** %10, align 8
  %38 = getelementptr inbounds %struct.ippseudo, %struct.ippseudo* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @htons(i32 %39)
  %41 = load %struct.ippseudo*, %struct.ippseudo** %10, align 8
  %42 = getelementptr inbounds %struct.ippseudo, %struct.ippseudo* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 24
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @memcpy(i8* %44, i8* %45, i32 %46)
  %48 = load i8*, i8** %9, align 8
  %49 = bitcast i8* %48 to i16*
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, 24
  %53 = trunc i64 %52 to i32
  %54 = call i32 @in_cksum(i16* %49, i32 %53)
  ret i32 %54
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @in_cksum(i16*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
