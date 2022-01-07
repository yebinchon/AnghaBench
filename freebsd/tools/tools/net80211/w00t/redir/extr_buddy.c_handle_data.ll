; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_buddy.c_handle_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_buddy.c_handle_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip = type { i64, i32, i16 }
%struct.iovec = type { i8*, i32 }
%struct.msghdr = type { i32, %struct.iovec* }

@.str = private unnamed_addr constant [19 x i8] c"Got %d bytes [%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_data(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip*, align 8
  %9 = alloca i16, align 2
  %10 = alloca [4 x i8], align 1
  %11 = alloca [2 x %struct.iovec], align 16
  %12 = alloca %struct.msghdr, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.ip*
  store %struct.ip* %14, %struct.ip** %8, align 8
  %15 = load %struct.ip*, %struct.ip** %8, align 8
  %16 = getelementptr inbounds %struct.ip, %struct.ip* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %66

20:                                               ; preds = %3
  %21 = load %struct.ip*, %struct.ip** %8, align 8
  %22 = getelementptr inbounds %struct.ip, %struct.ip* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 5
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %66

26:                                               ; preds = %20
  %27 = load %struct.ip*, %struct.ip** %8, align 8
  %28 = getelementptr inbounds %struct.ip, %struct.ip* %27, i32 0, i32 2
  %29 = load i16, i16* %28, align 4
  store i16 %29, i16* %9, align 2
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 %30, 20
  store i32 %31, i32* %7, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 20
  store i8* %33, i8** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i16, i16* %9, align 2
  %36 = call i32 @ntohs(i16 zeroext %35)
  %37 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %36)
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %39 = call i32 @memcpy(i8* %38, i16* %9, i32 2)
  %40 = load i32, i32* %7, align 4
  %41 = call zeroext i16 @htons(i32 %40)
  store i16 %41, i16* %9, align 2
  %42 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 2
  %43 = call i32 @memcpy(i8* %42, i16* %9, i32 2)
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %45 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %11, i64 0, i64 0
  %46 = getelementptr inbounds %struct.iovec, %struct.iovec* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 16
  %47 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %11, i64 0, i64 0
  %48 = getelementptr inbounds %struct.iovec, %struct.iovec* %47, i32 0, i32 1
  store i32 4, i32* %48, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %11, i64 0, i64 1
  %51 = getelementptr inbounds %struct.iovec, %struct.iovec* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 16
  %52 = load i32, i32* %7, align 4
  %53 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %11, i64 0, i64 1
  %54 = getelementptr inbounds %struct.iovec, %struct.iovec* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = call i32 @memset(%struct.msghdr* %12, i32 0, i32 16)
  %56 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %11, i64 0, i64 0
  %57 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 1
  store %struct.iovec* %56, %struct.iovec** %57, align 8
  %58 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 0
  store i32 2, i32* %58, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @sendmsg(i32 %59, %struct.msghdr* %12, i32 0)
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 4, %61
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %66

65:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %64, %25, %19
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @ntohs(i16 zeroext) #1

declare dso_local i32 @memcpy(i8*, i16*, i32) #1

declare dso_local zeroext i16 @htons(i32) #1

declare dso_local i32 @memset(%struct.msghdr*, i32, i32) #1

declare dso_local i32 @sendmsg(i32, %struct.msghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
