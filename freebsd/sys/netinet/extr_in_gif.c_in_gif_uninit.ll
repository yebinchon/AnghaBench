; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_gif.c_in_gif_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_gif.c_in_gif_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@curvnet = common dso_local global i32 0, align 4
@ipv4_encap_cfg = common dso_local global %struct.TYPE_3__* null, align 8
@ipv4_srcaddrtab = common dso_local global i32 0, align 4
@V_ipv4_hashtbl = common dso_local global i32* null, align 8
@V_ipv4_srchashtbl = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in_gif_uninit() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @curvnet, align 4
  %3 = call i64 @IS_DEFAULT_VNET(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %19, %5
  %7 = load i32, i32* %1, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ipv4_encap_cfg, align 8
  %9 = call i32 @nitems(%struct.TYPE_3__* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ipv4_encap_cfg, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ip_encap_detach(i32 %17)
  br label %19

19:                                               ; preds = %11
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %6

22:                                               ; preds = %6
  %23 = load i32, i32* @ipv4_srcaddrtab, align 4
  %24 = call i32 @ip_encap_unregister_srcaddr(i32 %23)
  br label %25

25:                                               ; preds = %22, %0
  %26 = load i32*, i32** @V_ipv4_hashtbl, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32*, i32** @V_ipv4_hashtbl, align 8
  %30 = call i32 @gif_hashdestroy(i32* %29)
  store i32* null, i32** @V_ipv4_hashtbl, align 8
  %31 = call i32 (...) @GIF_WAIT()
  %32 = load i32*, i32** @V_ipv4_srchashtbl, align 8
  %33 = call i32 @gif_hashdestroy(i32* %32)
  br label %34

34:                                               ; preds = %28, %25
  ret void
}

declare dso_local i64 @IS_DEFAULT_VNET(i32) #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

declare dso_local i32 @ip_encap_detach(i32) #1

declare dso_local i32 @ip_encap_unregister_srcaddr(i32) #1

declare dso_local i32 @gif_hashdestroy(i32*) #1

declare dso_local i32 @GIF_WAIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
