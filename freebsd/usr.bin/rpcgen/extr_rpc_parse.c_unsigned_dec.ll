; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_parse.c_unsigned_dec.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_parse.c_unsigned_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"u_char\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"u_short\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"u_long\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"u_int64_t\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"u_int\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @unsigned_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unsigned_dec(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  store i8** %0, i8*** %2, align 8
  %4 = call i32 @peek(%struct.TYPE_5__* %3)
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %25 [
    i32 132, label %7
    i32 128, label %10
    i32 129, label %14
    i32 131, label %18
    i32 130, label %22
  ]

7:                                                ; preds = %1
  %8 = call i32 @get_token(%struct.TYPE_5__* %3)
  %9 = load i8**, i8*** %2, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %27

10:                                               ; preds = %1
  %11 = call i32 @get_token(%struct.TYPE_5__* %3)
  %12 = load i8**, i8*** %2, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  %13 = call i32 @peekscan(i32 130, %struct.TYPE_5__* %3)
  br label %27

14:                                               ; preds = %1
  %15 = call i32 @get_token(%struct.TYPE_5__* %3)
  %16 = load i8**, i8*** %2, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  %17 = call i32 @peekscan(i32 130, %struct.TYPE_5__* %3)
  br label %27

18:                                               ; preds = %1
  %19 = call i32 @get_token(%struct.TYPE_5__* %3)
  %20 = load i8**, i8*** %2, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %20, align 8
  %21 = call i32 @peekscan(i32 130, %struct.TYPE_5__* %3)
  br label %27

22:                                               ; preds = %1
  %23 = call i32 @get_token(%struct.TYPE_5__* %3)
  %24 = load i8**, i8*** %2, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %24, align 8
  br label %27

25:                                               ; preds = %1
  %26 = load i8**, i8*** %2, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %26, align 8
  br label %27

27:                                               ; preds = %25, %22, %18, %14, %10, %7
  ret void
}

declare dso_local i32 @peek(%struct.TYPE_5__*) #1

declare dso_local i32 @get_token(%struct.TYPE_5__*) #1

declare dso_local i32 @peekscan(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
