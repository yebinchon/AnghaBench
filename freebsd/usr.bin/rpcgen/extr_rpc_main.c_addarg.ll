; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_addarg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_addarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@argcount = common dso_local global i64 0, align 8
@argmax = common dso_local global i64 0, align 8
@arglist = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @addarg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addarg(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @argcount, align 8
  %4 = load i64, i64* @argmax, align 8
  %5 = icmp sge i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 (...) @moreargs()
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i8*, i8** %2, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32* @xstrdup(i8* %12)
  %14 = load i32**, i32*** @arglist, align 8
  %15 = load i64, i64* @argcount, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* @argcount, align 8
  %17 = getelementptr inbounds i32*, i32** %14, i64 %15
  store i32* %13, i32** %17, align 8
  br label %23

18:                                               ; preds = %8
  %19 = load i32**, i32*** @arglist, align 8
  %20 = load i64, i64* @argcount, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* @argcount, align 8
  %22 = getelementptr inbounds i32*, i32** %19, i64 %20
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %18, %11
  ret void
}

declare dso_local i32 @moreargs(...) #1

declare dso_local i32* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
