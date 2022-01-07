; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_feed_receive_hook.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_feed_receive_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.receive_hook_feed_state = type { %struct.TYPE_3__, %struct.command*, i64 }
%struct.TYPE_3__ = type { i8*, i64 }
%struct.command = type { %struct.command*, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"%s %s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i64*)* @feed_receive_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feed_receive_hook(i8* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.receive_hook_feed_state*, align 8
  %9 = alloca %struct.command*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.receive_hook_feed_state*
  store %struct.receive_hook_feed_state* %11, %struct.receive_hook_feed_state** %8, align 8
  %12 = load %struct.receive_hook_feed_state*, %struct.receive_hook_feed_state** %8, align 8
  %13 = getelementptr inbounds %struct.receive_hook_feed_state, %struct.receive_hook_feed_state* %12, i32 0, i32 1
  %14 = load %struct.command*, %struct.command** %13, align 8
  store %struct.command* %14, %struct.command** %9, align 8
  br label %15

15:                                               ; preds = %37, %3
  %16 = load %struct.command*, %struct.command** %9, align 8
  %17 = icmp ne %struct.command* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load %struct.receive_hook_feed_state*, %struct.receive_hook_feed_state** %8, align 8
  %20 = getelementptr inbounds %struct.receive_hook_feed_state, %struct.receive_hook_feed_state* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.command*, %struct.command** %9, align 8
  %25 = getelementptr inbounds %struct.command, %struct.command* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.command*, %struct.command** %9, align 8
  %30 = getelementptr inbounds %struct.command, %struct.command* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i1 [ true, %23 ], [ %32, %28 ]
  br label %35

35:                                               ; preds = %33, %18, %15
  %36 = phi i1 [ false, %18 ], [ false, %15 ], [ %34, %33 ]
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = load %struct.command*, %struct.command** %9, align 8
  %39 = getelementptr inbounds %struct.command, %struct.command* %38, i32 0, i32 0
  %40 = load %struct.command*, %struct.command** %39, align 8
  store %struct.command* %40, %struct.command** %9, align 8
  br label %15

41:                                               ; preds = %35
  %42 = load %struct.command*, %struct.command** %9, align 8
  %43 = icmp ne %struct.command* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  br label %80

45:                                               ; preds = %41
  %46 = load %struct.receive_hook_feed_state*, %struct.receive_hook_feed_state** %8, align 8
  %47 = getelementptr inbounds %struct.receive_hook_feed_state, %struct.receive_hook_feed_state* %46, i32 0, i32 0
  %48 = call i32 @strbuf_reset(%struct.TYPE_3__* %47)
  %49 = load %struct.receive_hook_feed_state*, %struct.receive_hook_feed_state** %8, align 8
  %50 = getelementptr inbounds %struct.receive_hook_feed_state, %struct.receive_hook_feed_state* %49, i32 0, i32 0
  %51 = load %struct.command*, %struct.command** %9, align 8
  %52 = getelementptr inbounds %struct.command, %struct.command* %51, i32 0, i32 3
  %53 = call i32 @oid_to_hex(i32* %52)
  %54 = load %struct.command*, %struct.command** %9, align 8
  %55 = getelementptr inbounds %struct.command, %struct.command* %54, i32 0, i32 2
  %56 = call i32 @oid_to_hex(i32* %55)
  %57 = load %struct.command*, %struct.command** %9, align 8
  %58 = getelementptr inbounds %struct.command, %struct.command* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @strbuf_addf(%struct.TYPE_3__* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56, i32 %59)
  %61 = load %struct.command*, %struct.command** %9, align 8
  %62 = getelementptr inbounds %struct.command, %struct.command* %61, i32 0, i32 0
  %63 = load %struct.command*, %struct.command** %62, align 8
  %64 = load %struct.receive_hook_feed_state*, %struct.receive_hook_feed_state** %8, align 8
  %65 = getelementptr inbounds %struct.receive_hook_feed_state, %struct.receive_hook_feed_state* %64, i32 0, i32 1
  store %struct.command* %63, %struct.command** %65, align 8
  %66 = load i8**, i8*** %6, align 8
  %67 = icmp ne i8** %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %45
  %69 = load %struct.receive_hook_feed_state*, %struct.receive_hook_feed_state** %8, align 8
  %70 = getelementptr inbounds %struct.receive_hook_feed_state, %struct.receive_hook_feed_state* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i8**, i8*** %6, align 8
  store i8* %72, i8** %73, align 8
  %74 = load %struct.receive_hook_feed_state*, %struct.receive_hook_feed_state** %8, align 8
  %75 = getelementptr inbounds %struct.receive_hook_feed_state, %struct.receive_hook_feed_state* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %7, align 8
  store i64 %77, i64* %78, align 8
  br label %79

79:                                               ; preds = %68, %45
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %44
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @strbuf_reset(%struct.TYPE_3__*) #1

declare dso_local i32 @strbuf_addf(%struct.TYPE_3__*, i8*, i32, i32, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
