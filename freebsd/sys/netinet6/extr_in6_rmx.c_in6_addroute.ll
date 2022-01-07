; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_rmx.c_in6_addroute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_rmx.c_in6_addroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_head = type { i32 }
%struct.radix_node = type { i32 }
%struct.rtentry = type { i32, i64, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.TYPE_4__ = type { i32 }

@RTF_MULTICAST = common dso_local global i32 0, align 4
@RTF_HOST = common dso_local global i32 0, align 4
@RTF_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radix_node* (i8*, i8*, %struct.radix_head*, %struct.radix_node*)* @in6_addroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radix_node* @in6_addroute(i8* %0, i8* %1, %struct.radix_head* %2, %struct.radix_node* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.radix_head*, align 8
  %8 = alloca %struct.radix_node*, align 8
  %9 = alloca %struct.rtentry*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.radix_head* %2, %struct.radix_head** %7, align 8
  store %struct.radix_node* %3, %struct.radix_node** %8, align 8
  %11 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %12 = bitcast %struct.radix_node* %11 to %struct.rtentry*
  store %struct.rtentry* %12, %struct.rtentry** %9, align 8
  %13 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %14 = call i64 @rt_key(%struct.rtentry* %13)
  %15 = inttoptr i64 %14 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %15, %struct.sockaddr_in6** %10, align 8
  %16 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %17 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %16, i32 0, i32 0
  %18 = call i64 @IN6_IS_ADDR_MULTICAST(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load i32, i32* @RTF_MULTICAST, align 4
  %22 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %23 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %20, %4
  %27 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %28 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @RTF_HOST, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %26
  %34 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %35 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %34, i32 0, i32 3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_4__* @satosin6(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %41, i32 0, i32 0
  %43 = call i64 @IN6_ARE_ADDR_EQUAL(i32* %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %33
  %46 = load i32, i32* @RTF_LOCAL, align 4
  %47 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %48 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %33
  br label %52

52:                                               ; preds = %51, %26
  %53 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %54 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %87

57:                                               ; preds = %52
  %58 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %59 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %64 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call i64 @IN6_LINKMTU(i32* %65)
  %67 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %68 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  br label %86

69:                                               ; preds = %57
  %70 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %71 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %74 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @IN6_LINKMTU(i32* %75)
  %77 = icmp sgt i64 %72, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %69
  %79 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %80 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = call i64 @IN6_LINKMTU(i32* %81)
  %83 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %84 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %78, %69
  br label %86

86:                                               ; preds = %85, %62
  br label %87

87:                                               ; preds = %86, %52
  %88 = load i8*, i8** %5, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = load %struct.radix_head*, %struct.radix_head** %7, align 8
  %91 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %92 = call %struct.radix_node* @rn_addroute(i8* %88, i8* %89, %struct.radix_head* %90, %struct.radix_node* %91)
  ret %struct.radix_node* %92
}

declare dso_local i64 @rt_key(%struct.rtentry*) #1

declare dso_local i64 @IN6_IS_ADDR_MULTICAST(i32*) #1

declare dso_local i64 @IN6_ARE_ADDR_EQUAL(i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @satosin6(i32) #1

declare dso_local i64 @IN6_LINKMTU(i32*) #1

declare dso_local %struct.radix_node* @rn_addroute(i8*, i8*, %struct.radix_head*, %struct.radix_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
