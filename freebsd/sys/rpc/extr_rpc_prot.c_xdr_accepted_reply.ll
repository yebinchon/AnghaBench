; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_rpc_prot.c_xdr_accepted_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_rpc_prot.c_xdr_accepted_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.accepted_reply = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 (i32*, i32)* }

@FALSE = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_accepted_reply(i32* %0, %struct.accepted_reply* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.accepted_reply*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.accepted_reply* %1, %struct.accepted_reply** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.accepted_reply*, %struct.accepted_reply** %5, align 8
  %12 = icmp ne %struct.accepted_reply* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.accepted_reply*, %struct.accepted_reply** %5, align 8
  %16 = getelementptr inbounds %struct.accepted_reply, %struct.accepted_reply* %15, i32 0, i32 0
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.accepted_reply*, %struct.accepted_reply** %5, align 8
  %19 = getelementptr inbounds %struct.accepted_reply, %struct.accepted_reply* %18, i32 0, i32 3
  %20 = call i32 @xdr_opaque_auth(i32* %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %3, align 4
  br label %75

24:                                               ; preds = %2
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @xdr_enum(i32* %25, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %3, align 4
  br label %75

31:                                               ; preds = %24
  %32 = load %struct.accepted_reply*, %struct.accepted_reply** %5, align 8
  %33 = getelementptr inbounds %struct.accepted_reply, %struct.accepted_reply* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %73 [
    i32 129, label %35
    i32 131, label %57
    i32 133, label %72
    i32 128, label %72
    i32 132, label %72
    i32 130, label %72
  ]

35:                                               ; preds = %31
  %36 = load %struct.accepted_reply*, %struct.accepted_reply** %5, align 8
  %37 = getelementptr inbounds %struct.accepted_reply, %struct.accepted_reply* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32 (i32*, i32)*, i32 (i32*, i32)** %38, align 8
  %40 = load i32, i32* @xdr_void, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i32 (i32*, i32)*
  %43 = icmp ne i32 (i32*, i32)* %39, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %35
  %45 = load %struct.accepted_reply*, %struct.accepted_reply** %5, align 8
  %46 = getelementptr inbounds %struct.accepted_reply, %struct.accepted_reply* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32 (i32*, i32)*, i32 (i32*, i32)** %47, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.accepted_reply*, %struct.accepted_reply** %5, align 8
  %51 = getelementptr inbounds %struct.accepted_reply, %struct.accepted_reply* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 %48(i32* %49, i32 %53)
  store i32 %54, i32* %3, align 4
  br label %75

55:                                               ; preds = %35
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %3, align 4
  br label %75

57:                                               ; preds = %31
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.accepted_reply*, %struct.accepted_reply** %5, align 8
  %60 = getelementptr inbounds %struct.accepted_reply, %struct.accepted_reply* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = call i32 @xdr_uint32_t(i32* %58, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %3, align 4
  br label %75

66:                                               ; preds = %57
  %67 = load i32*, i32** %4, align 8
  %68 = load %struct.accepted_reply*, %struct.accepted_reply** %5, align 8
  %69 = getelementptr inbounds %struct.accepted_reply, %struct.accepted_reply* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = call i32 @xdr_uint32_t(i32* %67, i32* %70)
  store i32 %71, i32* %3, align 4
  br label %75

72:                                               ; preds = %31, %31, %31, %31
  br label %73

73:                                               ; preds = %31, %72
  %74 = load i32, i32* @TRUE, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %66, %64, %55, %44, %29, %22
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @xdr_opaque_auth(i32*, i32*) #1

declare dso_local i32 @xdr_enum(i32*, i32*) #1

declare dso_local i32 @xdr_uint32_t(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
