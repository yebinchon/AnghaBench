; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_rmx.c_in_addroute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_rmx.c_in_addroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_head = type { i32 }
%struct.radix_node = type { i32 }
%struct.rtentry = type { i32, i64, %struct.TYPE_10__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.epoch_tracker = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@RTF_HOST = common dso_local global i32 0, align 4
@RTF_BROADCAST = common dso_local global i32 0, align 4
@RTF_LOCAL = common dso_local global i32 0, align 4
@RTF_MULTICAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radix_node* (i8*, i8*, %struct.radix_head*, %struct.radix_node*)* @in_addroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radix_node* @in_addroute(i8* %0, i8* %1, %struct.radix_head* %2, %struct.radix_node* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.radix_head*, align 8
  %8 = alloca %struct.radix_node*, align 8
  %9 = alloca %struct.rtentry*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.epoch_tracker, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.radix_head* %2, %struct.radix_head** %7, align 8
  store %struct.radix_node* %3, %struct.radix_node** %8, align 8
  %13 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %14 = bitcast %struct.radix_node* %13 to %struct.rtentry*
  store %struct.rtentry* %14, %struct.rtentry** %9, align 8
  %15 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %16 = call i64 @rt_key(%struct.rtentry* %15)
  %17 = inttoptr i64 %16 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %17, %struct.sockaddr_in** %10, align 8
  %18 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %19 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @RTF_HOST, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %70

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %11, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @NET_EPOCH_ENTER(i32 %26)
  %28 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 0
  %30 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %31 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %30, i32 0, i32 2
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @in_broadcast(i64 %34, %struct.TYPE_10__* %32)
  store i32 %35, i32* %12, align 4
  %36 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %11, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @NET_EPOCH_EXIT(i32 %37)
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %24
  %42 = load i32, i32* @RTF_BROADCAST, align 4
  %43 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %44 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %69

47:                                               ; preds = %24
  %48 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %49 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %48, i32 0, i32 3
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.TYPE_8__* @satosin(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %58 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %56, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %47
  %63 = load i32, i32* @RTF_LOCAL, align 4
  %64 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %65 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %62, %47
  br label %69

69:                                               ; preds = %68, %41
  br label %70

70:                                               ; preds = %69, %4
  %71 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %72 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @ntohl(i64 %74)
  %76 = call i64 @IN_MULTICAST(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load i32, i32* @RTF_MULTICAST, align 4
  %80 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %81 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %78, %70
  %85 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %86 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %85, i32 0, i32 2
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = icmp ne %struct.TYPE_10__* %87, null
  br i1 %88, label %89, label %122

89:                                               ; preds = %84
  %90 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %91 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %96 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %95, i32 0, i32 2
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %101 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  br label %121

102:                                              ; preds = %89
  %103 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %104 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %107 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %106, i32 0, i32 2
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %105, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %102
  %113 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %114 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %113, i32 0, i32 2
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %119 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %112, %102
  br label %121

121:                                              ; preds = %120, %94
  br label %122

122:                                              ; preds = %121, %84
  %123 = load i8*, i8** %5, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = load %struct.radix_head*, %struct.radix_head** %7, align 8
  %126 = load %struct.radix_node*, %struct.radix_node** %8, align 8
  %127 = call %struct.radix_node* @rn_addroute(i8* %123, i8* %124, %struct.radix_head* %125, %struct.radix_node* %126)
  ret %struct.radix_node* %127
}

declare dso_local i64 @rt_key(%struct.rtentry*) #1

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local i32 @in_broadcast(i64, %struct.TYPE_10__*) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

declare dso_local %struct.TYPE_8__* @satosin(i32) #1

declare dso_local i64 @IN_MULTICAST(i32) #1

declare dso_local i32 @ntohl(i64) #1

declare dso_local %struct.radix_node* @rn_addroute(i8*, i8*, %struct.radix_head*, %struct.radix_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
