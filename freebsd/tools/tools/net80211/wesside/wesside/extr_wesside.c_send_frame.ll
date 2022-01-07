; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_send_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@send_frame.lame = internal global i8* null, align 8
@send_frame.lamelen = internal global i32 0, align 4
@send_frame.lastlen = internal global i32 0, align 4
@txstate = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [40 x i8] c"ERROR Max retransmists for (%d bytes):\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"malloc()\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"gettimeofday()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_frame(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %23

9:                                                ; preds = %3
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @txstate, i32 0, i32 0), align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @txstate, i32 0, i32 0), align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @txstate, i32 0, i32 0), align 4
  %13 = icmp sgt i32 %12, 10
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load i32, i32* @send_frame.lastlen, align 4
  %16 = call i32 @time_print(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i8*, i8** @send_frame.lame, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i32, i32* @send_frame.lastlen, align 4
  %20 = call i32 @hexdump(i8* %18, i32 %19)
  br label %21

21:                                               ; preds = %14, %9
  %22 = load i32, i32* @send_frame.lastlen, align 4
  store i32 %22, i32* %6, align 4
  br label %55

23:                                               ; preds = %3
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @txstate, i32 0, i32 1), align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @send_frame.lamelen, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %23
  %33 = load i8*, i8** @send_frame.lame, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i8*, i8** @send_frame.lame, align 8
  %37 = call i32 @free(i8* %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @malloc(i32 %39)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** @send_frame.lame, align 8
  %42 = load i8*, i8** @send_frame.lame, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i32 @exit(i32 1) #3
  unreachable

47:                                               ; preds = %38
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* @send_frame.lamelen, align 4
  br label %49

49:                                               ; preds = %47, %23
  %50 = load i8*, i8** @send_frame.lame, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @memcpy(i8* %50, i8* %51, i32 %52)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @txstate, i32 0, i32 0), align 4
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* @send_frame.lastlen, align 4
  br label %55

55:                                               ; preds = %49, %21
  %56 = load i32, i32* %4, align 4
  %57 = load i8*, i8** @send_frame.lame, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @inject(i32 %56, i8* %57, i32 %58)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @txstate, i32 0, i32 1), align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @txstate, i32 0, i32 3), align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @txstate, i32 0, i32 3), align 4
  %62 = call i32 @gettimeofday(%struct.TYPE_4__* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @txstate, i32 0, i32 2), i32* null)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %66 = call i32 @exit(i32 1) #3
  unreachable

67:                                               ; preds = %55
  ret void
}

declare dso_local i32 @time_print(i8*, i32) #1

declare dso_local i32 @hexdump(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @inject(i32, i8*, i32) #1

declare dso_local i32 @gettimeofday(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
