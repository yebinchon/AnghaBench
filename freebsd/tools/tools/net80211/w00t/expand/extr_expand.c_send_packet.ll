; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/expand/extr_expand.c_send_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/expand/extr_expand.c_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"inject()\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Wrote %d/%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"gettimeofday()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_packet(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  %3 = alloca i32, align 4
  store %struct.params* %0, %struct.params** %2, align 8
  %4 = load %struct.params*, %struct.params** %2, align 8
  %5 = getelementptr inbounds %struct.params, %struct.params* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.params*, %struct.params** %2, align 8
  %8 = getelementptr inbounds %struct.params, %struct.params* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.params*, %struct.params** %2, align 8
  %11 = getelementptr inbounds %struct.params, %struct.params* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @inject(i32 %6, i32 %9, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %1
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.params*, %struct.params** %2, align 8
  %21 = getelementptr inbounds %struct.params, %struct.params* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.params*, %struct.params** %2, align 8
  %27 = getelementptr inbounds %struct.params, %struct.params* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %28)
  %30 = call i32 @exit(i32 1) #3
  unreachable

31:                                               ; preds = %18
  %32 = load %struct.params*, %struct.params** %2, align 8
  %33 = getelementptr inbounds %struct.params, %struct.params* %32, i32 0, i32 1
  %34 = call i32 @gettimeofday(i32* %33, i32* null)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31
  ret void
}

declare dso_local i32 @inject(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @gettimeofday(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
