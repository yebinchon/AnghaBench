; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_add_netid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_add_netid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcbdump_short = type { %struct.netidlist* }
%struct.netidlist = type { i8*, %struct.netidlist* }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpcbdump_short*, i8*)* @add_netid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_netid(%struct.rpcbdump_short* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpcbdump_short*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.netidlist*, align 8
  store %struct.rpcbdump_short* %0, %struct.rpcbdump_short** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.rpcbdump_short*, %struct.rpcbdump_short** %4, align 8
  %8 = getelementptr inbounds %struct.rpcbdump_short, %struct.rpcbdump_short* %7, i32 0, i32 0
  %9 = load %struct.netidlist*, %struct.netidlist** %8, align 8
  store %struct.netidlist* %9, %struct.netidlist** %6, align 8
  br label %10

10:                                               ; preds = %22, %2
  %11 = load %struct.netidlist*, %struct.netidlist** %6, align 8
  %12 = icmp ne %struct.netidlist* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load %struct.netidlist*, %struct.netidlist** %6, align 8
  %15 = getelementptr inbounds %struct.netidlist, %struct.netidlist* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @strcmp(i8* %16, i8* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %26

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.netidlist*, %struct.netidlist** %6, align 8
  %24 = getelementptr inbounds %struct.netidlist, %struct.netidlist* %23, i32 0, i32 1
  %25 = load %struct.netidlist*, %struct.netidlist** %24, align 8
  store %struct.netidlist* %25, %struct.netidlist** %6, align 8
  br label %10

26:                                               ; preds = %20, %10
  %27 = load %struct.netidlist*, %struct.netidlist** %6, align 8
  %28 = icmp ne %struct.netidlist* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %3, align 4
  br label %51

31:                                               ; preds = %26
  %32 = call i64 @malloc(i32 16)
  %33 = inttoptr i64 %32 to %struct.netidlist*
  store %struct.netidlist* %33, %struct.netidlist** %6, align 8
  %34 = load %struct.netidlist*, %struct.netidlist** %6, align 8
  %35 = icmp eq %struct.netidlist* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %3, align 4
  br label %51

38:                                               ; preds = %31
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.netidlist*, %struct.netidlist** %6, align 8
  %41 = getelementptr inbounds %struct.netidlist, %struct.netidlist* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.rpcbdump_short*, %struct.rpcbdump_short** %4, align 8
  %43 = getelementptr inbounds %struct.rpcbdump_short, %struct.rpcbdump_short* %42, i32 0, i32 0
  %44 = load %struct.netidlist*, %struct.netidlist** %43, align 8
  %45 = load %struct.netidlist*, %struct.netidlist** %6, align 8
  %46 = getelementptr inbounds %struct.netidlist, %struct.netidlist* %45, i32 0, i32 1
  store %struct.netidlist* %44, %struct.netidlist** %46, align 8
  %47 = load %struct.netidlist*, %struct.netidlist** %6, align 8
  %48 = load %struct.rpcbdump_short*, %struct.rpcbdump_short** %4, align 8
  %49 = getelementptr inbounds %struct.rpcbdump_short, %struct.rpcbdump_short* %48, i32 0, i32 0
  store %struct.netidlist* %47, %struct.netidlist** %49, align 8
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %38, %36, %29
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
