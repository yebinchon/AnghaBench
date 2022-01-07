; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_local_rpcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_local_rpcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconfig = type { i32* }

@NC_LOOPBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"getnetconfig: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @local_rpcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @local_rpcb(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.netconfig*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = call i8* (...) @setnetconfig()
  store i8* %9, i8** %6, align 8
  br label %10

10:                                               ; preds = %27, %2
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.netconfig* @getnetconfig(i8* %11)
  store %struct.netconfig* %12, %struct.netconfig** %7, align 8
  %13 = icmp ne %struct.netconfig* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load %struct.netconfig*, %struct.netconfig** %7, align 8
  %16 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.netconfig*, %struct.netconfig** %7, align 8
  %21 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* @NC_LOOPBACK, align 4
  %24 = call i64 @strcmp(i32* %22, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %28

27:                                               ; preds = %19, %14
  br label %10

28:                                               ; preds = %26, %10
  %29 = load %struct.netconfig*, %struct.netconfig** %7, align 8
  %30 = icmp eq %struct.netconfig* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = call i32 (...) @nc_sperror()
  %33 = call i32 @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32* null, i32** %3, align 8
  br label %42

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.netconfig*, %struct.netconfig** %7, align 8
  %38 = call i32* @clnt_tp_create(i32* null, i32 %35, i32 %36, %struct.netconfig* %37)
  store i32* %38, i32** %8, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @endnetconfig(i8* %39)
  %41 = load i32*, i32** %8, align 8
  store i32* %41, i32** %3, align 8
  br label %42

42:                                               ; preds = %34, %31
  %43 = load i32*, i32** %3, align 8
  ret i32* %43
}

declare dso_local i8* @setnetconfig(...) #1

declare dso_local %struct.netconfig* @getnetconfig(i8*) #1

declare dso_local i64 @strcmp(i32*, i32) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @nc_sperror(...) #1

declare dso_local i32* @clnt_tp_create(i32*, i32, i32, %struct.netconfig*) #1

declare dso_local i32 @endnetconfig(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
