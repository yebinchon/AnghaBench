; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_scope6.c_sa6_embedscope.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_scope6.c_sa6_embedscope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@V_if_index = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sa6_embedscope(%struct.sockaddr_in6* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in6*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sockaddr_in6* %0, %struct.sockaddr_in6** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %8 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %16 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 1
  %17 = call i32 @scope6_addr2default(%struct.TYPE_4__* %16)
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %14, %11, %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %18
  %22 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %22, i32 0, i32 1
  %24 = call i64 @IN6_IS_SCOPE_LINKLOCAL(%struct.TYPE_4__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %27, i32 0, i32 1
  %29 = call i64 @IN6_IS_ADDR_MC_INTFACELOCAL(%struct.TYPE_4__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %26, %21
  %32 = load i32, i32* @V_if_index, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = call i32* @ifnet_byindex(i32 %36)
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %31
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %3, align 4
  br label %53

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, 65535
  %44 = call i32 @htons(i32 %43)
  %45 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %44, i32* %49, align 4
  %50 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %51 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  br label %52

52:                                               ; preds = %41, %26, %18
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %39
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @scope6_addr2default(%struct.TYPE_4__*) #1

declare dso_local i64 @IN6_IS_SCOPE_LINKLOCAL(%struct.TYPE_4__*) #1

declare dso_local i64 @IN6_IS_ADDR_MC_INTFACELOCAL(%struct.TYPE_4__*) #1

declare dso_local i32* @ifnet_byindex(i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
