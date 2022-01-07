; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_moreargs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_moreargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@argmax = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"refusing to allocate too many arguments\00", align 1
@arglist = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"unable to allocate arglist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @moreargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moreargs() #0 {
  %1 = alloca i8**, align 8
  %2 = load i32, i32* @argmax, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @argmax, align 4
  %7 = shl i32 %6, 1
  br label %8

8:                                                ; preds = %5, %4
  %9 = phi i32 [ 32, %4 ], [ %7, %5 ]
  store i32 %9, i32* @argmax, align 4
  %10 = load i32, i32* @argmax, align 4
  %11 = load i32, i32* @INT_MAX, align 4
  %12 = sdiv i32 %11, 4
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = call i32 @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (...) @crash()
  br label %17

17:                                               ; preds = %14, %8
  %18 = load i8**, i8*** @arglist, align 8
  %19 = load i32, i32* @argmax, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 8
  %22 = trunc i64 %21 to i32
  %23 = call i8** @realloc(i8** %18, i32 %22)
  store i8** %23, i8*** %1, align 8
  %24 = load i8**, i8*** %1, align 8
  %25 = icmp eq i8** %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 (...) @crash()
  br label %29

29:                                               ; preds = %26, %17
  %30 = load i8**, i8*** @arglist, align 8
  %31 = call i32 @free(i8** %30)
  %32 = load i8**, i8*** %1, align 8
  store i8** %32, i8*** @arglist, align 8
  ret void
}

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @crash(...) #1

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
