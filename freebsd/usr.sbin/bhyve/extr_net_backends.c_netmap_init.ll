; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_net_backends.c_netmap_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_net_backends.c_netmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_backend = type { i32, i64 }
%struct.netmap_priv = type { i8*, i32*, %struct.TYPE_4__*, i8*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NETMAP_NO_TX_POLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Unable to nm_open(): interface '%s', errno (%s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EVF_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Could not register event\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_backend*, i8*, i32, i8*)* @netmap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_init(%struct.net_backend* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_backend*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.netmap_priv*, align 8
  store %struct.net_backend* %0, %struct.net_backend** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.net_backend*, %struct.net_backend** %6, align 8
  %12 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.netmap_priv*
  store %struct.netmap_priv* %14, %struct.netmap_priv** %10, align 8
  %15 = load %struct.netmap_priv*, %struct.netmap_priv** %10, align 8
  %16 = getelementptr inbounds %struct.netmap_priv, %struct.netmap_priv* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @strlcpy(i8* %17, i8* %18, i32 8)
  %20 = load %struct.netmap_priv*, %struct.netmap_priv** %10, align 8
  %21 = getelementptr inbounds %struct.netmap_priv, %struct.netmap_priv* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 7
  store i8 0, i8* %23, align 1
  %24 = load %struct.netmap_priv*, %struct.netmap_priv** %10, align 8
  %25 = getelementptr inbounds %struct.netmap_priv, %struct.netmap_priv* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* @NETMAP_NO_TX_POLL, align 4
  %28 = call %struct.TYPE_4__* @nm_open(i8* %26, i32* null, i32 %27, i32* null)
  %29 = load %struct.netmap_priv*, %struct.netmap_priv** %10, align 8
  %30 = getelementptr inbounds %struct.netmap_priv, %struct.netmap_priv* %29, i32 0, i32 2
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %30, align 8
  %31 = load %struct.netmap_priv*, %struct.netmap_priv** %10, align 8
  %32 = getelementptr inbounds %struct.netmap_priv, %struct.netmap_priv* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = icmp eq %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %4
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 @strerror(i32 %37)
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @WPRINTF(i8* %40)
  %42 = load %struct.netmap_priv*, %struct.netmap_priv** %10, align 8
  %43 = call i32 @free(%struct.netmap_priv* %42)
  store i32 -1, i32* %5, align 4
  br label %98

44:                                               ; preds = %4
  %45 = load %struct.netmap_priv*, %struct.netmap_priv** %10, align 8
  %46 = getelementptr inbounds %struct.netmap_priv, %struct.netmap_priv* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.netmap_priv*, %struct.netmap_priv** %10, align 8
  %52 = getelementptr inbounds %struct.netmap_priv, %struct.netmap_priv* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 4
  %53 = load %struct.netmap_priv*, %struct.netmap_priv** %10, align 8
  %54 = getelementptr inbounds %struct.netmap_priv, %struct.netmap_priv* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @NETMAP_TXRING(i32 %57, i32 0)
  %59 = load %struct.netmap_priv*, %struct.netmap_priv** %10, align 8
  %60 = getelementptr inbounds %struct.netmap_priv, %struct.netmap_priv* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load %struct.netmap_priv*, %struct.netmap_priv** %10, align 8
  %62 = getelementptr inbounds %struct.netmap_priv, %struct.netmap_priv* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @NETMAP_RXRING(i32 %65, i32 0)
  %67 = load %struct.netmap_priv*, %struct.netmap_priv** %10, align 8
  %68 = getelementptr inbounds %struct.netmap_priv, %struct.netmap_priv* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.netmap_priv*, %struct.netmap_priv** %10, align 8
  %71 = getelementptr inbounds %struct.netmap_priv, %struct.netmap_priv* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load %struct.netmap_priv*, %struct.netmap_priv** %10, align 8
  %74 = getelementptr inbounds %struct.netmap_priv, %struct.netmap_priv* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load %struct.netmap_priv*, %struct.netmap_priv** %10, align 8
  %76 = getelementptr inbounds %struct.netmap_priv, %struct.netmap_priv* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.net_backend*, %struct.net_backend** %6, align 8
  %81 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.net_backend*, %struct.net_backend** %6, align 8
  %83 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @EVF_READ, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i8*, i8** %9, align 8
  %88 = call i32* @mevent_add_disabled(i32 %84, i32 %85, i32 %86, i8* %87)
  %89 = load %struct.netmap_priv*, %struct.netmap_priv** %10, align 8
  %90 = getelementptr inbounds %struct.netmap_priv, %struct.netmap_priv* %89, i32 0, i32 1
  store i32* %88, i32** %90, align 8
  %91 = load %struct.netmap_priv*, %struct.netmap_priv** %10, align 8
  %92 = getelementptr inbounds %struct.netmap_priv, %struct.netmap_priv* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %44
  %96 = call i32 @WPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %98

97:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %97, %95, %35
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @nm_open(i8*, i32*, i32, i32*) #1

declare dso_local i32 @WPRINTF(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @free(%struct.netmap_priv*) #1

declare dso_local i32 @NETMAP_TXRING(i32, i32) #1

declare dso_local i32 @NETMAP_RXRING(i32, i32) #1

declare dso_local i32* @mevent_add_disabled(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
