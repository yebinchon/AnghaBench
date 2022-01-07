; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/dics/extr_dics.c_udp_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/dics/extr_dics.c_udp_checksum.c"
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
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %4
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to %struct.ippseudo*
  store %struct.ippseudo* %24, %struct.ippseudo** %10, align 8
  %25 = load %struct.ippseudo*, %struct.ippseudo** %10, align 8
  %26 = getelementptr inbounds %struct.ippseudo, %struct.ippseudo* %25, i32 0, i32 0
  %27 = load %struct.in_addr*, %struct.in_addr** %7, align 8
  %28 = bitcast %struct.in_addr* %27 to i8*
  %29 = call i32 @memcpy(i8* %26, i8* %28, i32 4)
  %30 = load %struct.ippseudo*, %struct.ippseudo** %10, align 8
  %31 = getelementptr inbounds %struct.ippseudo, %struct.ippseudo* %30, i32 0, i32 1
  %32 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %33 = bitcast %struct.in_addr* %32 to i8*
  %34 = call i32 @memcpy(i8* %31, i8* %33, i32 4)
  %35 = load %struct.ippseudo*, %struct.ippseudo** %10, align 8
  %36 = getelementptr inbounds %struct.ippseudo, %struct.ippseudo* %35, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @IPPROTO_UDP, align 4
  %38 = load %struct.ippseudo*, %struct.ippseudo** %10, align 8
  %39 = getelementptr inbounds %struct.ippseudo, %struct.ippseudo* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @htons(i32 %40)
  %42 = load %struct.ippseudo*, %struct.ippseudo** %10, align 8
  %43 = getelementptr inbounds %struct.ippseudo, %struct.ippseudo* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 24
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @memcpy(i8* %45, i8* %46, i32 %47)
  %49 = load i8*, i8** %9, align 8
  %50 = bitcast i8* %49 to i16*
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, 24
  %54 = trunc i64 %53 to i32
  %55 = call i32 @in_cksum(i16* %50, i32 %54)
  ret i32 %55
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @in_cksum(i16*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
