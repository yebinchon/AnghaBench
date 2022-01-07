; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/libw00t/extr_w00t.c_send_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/libw00t/extr_w00t.c_send_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@send_ack.buf = internal global [10 x i8] zeroinitializer, align 1
@send_ack.p = internal global i8* null, align 8
@IEEE80211_FC0_TYPE_CTL = common dso_local global i8 0, align 1
@IEEE80211_FC0_SUBTYPE_ACK = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_ack(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** @send_ack.p, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = call i32 @memset(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @send_ack.buf, i64 0, i64 0), i32 0, i32 10)
  %10 = load i8, i8* @IEEE80211_FC0_TYPE_CTL, align 1
  %11 = sext i8 %10 to i32
  %12 = load i8, i8* @IEEE80211_FC0_SUBTYPE_ACK, align 1
  %13 = sext i8 %12 to i32
  %14 = or i32 %11, %13
  %15 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @send_ack.buf, i64 0, i64 0), align 1
  %16 = sext i8 %15 to i32
  %17 = or i32 %16, %14
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @send_ack.buf, i64 0, i64 0), align 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @send_ack.buf, i64 0, i64 4), i8** @send_ack.p, align 8
  br label %19

19:                                               ; preds = %8, %2
  %20 = load i8*, i8** @send_ack.p, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @memcpy(i8* %20, i8* %21, i32 6)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @inject(i32 %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @send_ack.buf, i64 0, i64 0), i32 10)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @inject(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
