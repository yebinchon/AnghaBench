; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlanwds/extr_wlanwds.c_wds_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlanwds/extr_wlanwds.c_wds_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wds = type { %struct.wds*, i32 }

@wds = common dso_local global %struct.wds* null, align 8
@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @wds_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wds_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.wds*, align 8
  %4 = alloca %struct.wds**, align 8
  store i8* %0, i8** %2, align 8
  store %struct.wds** @wds, %struct.wds*** %4, align 8
  br label %5

5:                                                ; preds = %19, %1
  %6 = load %struct.wds**, %struct.wds*** %4, align 8
  %7 = load %struct.wds*, %struct.wds** %6, align 8
  store %struct.wds* %7, %struct.wds** %3, align 8
  %8 = icmp ne %struct.wds* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = load %struct.wds*, %struct.wds** %3, align 8
  %11 = getelementptr inbounds %struct.wds, %struct.wds* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = load i32, i32* @IFNAMSIZ, align 4
  %15 = call i64 @strncmp(i32 %12, i8* %13, i32 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %22

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.wds*, %struct.wds** %3, align 8
  %21 = getelementptr inbounds %struct.wds, %struct.wds* %20, i32 0, i32 0
  store %struct.wds** %21, %struct.wds*** %4, align 8
  br label %5

22:                                               ; preds = %17, %5
  %23 = load %struct.wds*, %struct.wds** %3, align 8
  %24 = icmp ne %struct.wds* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.wds*, %struct.wds** %3, align 8
  %27 = getelementptr inbounds %struct.wds, %struct.wds* %26, i32 0, i32 0
  %28 = load %struct.wds*, %struct.wds** %27, align 8
  %29 = load %struct.wds**, %struct.wds*** %4, align 8
  store %struct.wds* %28, %struct.wds** %29, align 8
  %30 = load %struct.wds*, %struct.wds** %3, align 8
  %31 = call i32 @free(%struct.wds* %30)
  br label %32

32:                                               ; preds = %25, %22
  ret void
}

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @free(%struct.wds*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
