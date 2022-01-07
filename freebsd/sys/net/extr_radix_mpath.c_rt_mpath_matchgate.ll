; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_radix_mpath.c_rt_mpath_matchgate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_radix_mpath.c_rt_mpath_matchgate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.sockaddr = type { i64 }
%struct.radix_node = type { i32 }

@AF_LINK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rtentry* @rt_mpath_matchgate(%struct.rtentry* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca %struct.rtentry*, align 8
  %4 = alloca %struct.rtentry*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.radix_node*, align 8
  store %struct.rtentry* %0, %struct.rtentry** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %7 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %8 = icmp ne %struct.sockaddr* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %11 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %2
  store %struct.rtentry* null, %struct.rtentry** %3, align 8
  br label %71

15:                                               ; preds = %9
  %16 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %17 = bitcast %struct.rtentry* %16 to %struct.radix_node*
  store %struct.radix_node* %17, %struct.radix_node** %6, align 8
  br label %18

18:                                               ; preds = %64, %15
  %19 = load %struct.radix_node*, %struct.radix_node** %6, align 8
  %20 = bitcast %struct.radix_node* %19 to %struct.rtentry*
  store %struct.rtentry* %20, %struct.rtentry** %4, align 8
  %21 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %22 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AF_LINK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %18
  %29 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %30 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %35 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %36 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @memcmp(%struct.TYPE_4__* %33, %struct.sockaddr* %34, i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %28
  br label %68

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41, %18
  %43 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %44 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %49 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %42
  %53 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %54 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %57 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %58 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @memcmp(%struct.TYPE_4__* %55, %struct.sockaddr* %56, i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %52
  br label %68

63:                                               ; preds = %52, %42
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.radix_node*, %struct.radix_node** %6, align 8
  %66 = call %struct.radix_node* @rn_mpath_next(%struct.radix_node* %65)
  store %struct.radix_node* %66, %struct.radix_node** %6, align 8
  %67 = icmp ne %struct.radix_node* %66, null
  br i1 %67, label %18, label %68

68:                                               ; preds = %64, %62, %40
  %69 = load %struct.radix_node*, %struct.radix_node** %6, align 8
  %70 = bitcast %struct.radix_node* %69 to %struct.rtentry*
  store %struct.rtentry* %70, %struct.rtentry** %3, align 8
  br label %71

71:                                               ; preds = %68, %14
  %72 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  ret %struct.rtentry* %72
}

declare dso_local i32 @memcmp(%struct.TYPE_4__*, %struct.sockaddr*, i64) #1

declare dso_local %struct.radix_node* @rn_mpath_next(%struct.radix_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
