; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_FindNewPortGroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_FindNewPortGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.in_addr = type { i32 }
%struct.alias_link = type { i32 }

@LINK_UDP = common dso_local global i32 0, align 4
@LINK_TCP = common dso_local global i32 0, align 4
@GET_NEW_PORT_MAX_ATTEMPTS = common dso_local global i32 0, align 4
@PKT_ALIAS_SAME_PORTS = common dso_local global i32 0, align 4
@FIND_EVEN_ALIAS_BASE = common dso_local global i32 0, align 4
@ALIAS_PORT_MASK_EVEN = common dso_local global i32 0, align 4
@ALIAS_PORT_MASK = common dso_local global i32 0, align 4
@ALIAS_PORT_BASE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FindNewPortGroup(%struct.libalias* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.in_addr, align 4
  %11 = alloca %struct.in_addr, align 4
  %12 = alloca %struct.libalias*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.alias_link*, align 8
  %24 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  store i32 %1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  store i32 %2, i32* %25, align 4
  store %struct.libalias* %0, %struct.libalias** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %26 = load %struct.libalias*, %struct.libalias** %12, align 8
  %27 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %26)
  %28 = load i32, i32* %16, align 4
  switch i32 %28, label %33 [
    i32 128, label %29
    i32 129, label %31
  ]

29:                                               ; preds = %8
  %30 = load i32, i32* @LINK_UDP, align 4
  store i32 %30, i32* %22, align 4
  br label %34

31:                                               ; preds = %8
  %32 = load i32, i32* @LINK_TCP, align 4
  store i32 %32, i32* %22, align 4
  br label %34

33:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %121

34:                                               ; preds = %31, %29
  %35 = load i32, i32* @GET_NEW_PORT_MAX_ATTEMPTS, align 4
  store i32 %35, i32* %20, align 4
  %36 = load %struct.libalias*, %struct.libalias** %12, align 8
  %37 = getelementptr inbounds %struct.libalias, %struct.libalias* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PKT_ALIAS_SAME_PORTS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @ntohs(i32 %43)
  store i32 %44, i32* %21, align 4
  br label %63

45:                                               ; preds = %34
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* @FIND_EVEN_ALIAS_BASE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = call i32 (...) @arc4random()
  %51 = load i32, i32* @ALIAS_PORT_MASK_EVEN, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %21, align 4
  br label %57

53:                                               ; preds = %45
  %54 = call i32 (...) @arc4random()
  %55 = load i32, i32* @ALIAS_PORT_MASK, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %21, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i64, i64* @ALIAS_PORT_BASE, align 8
  %59 = load i32, i32* %21, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %21, align 4
  br label %63

63:                                               ; preds = %57, %42
  store i32 0, i32* %18, align 4
  br label %64

64:                                               ; preds = %117, %63
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* %20, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %120

68:                                               ; preds = %64
  store i32 0, i32* %19, align 4
  br label %69

69:                                               ; preds = %89, %68
  %70 = load i32, i32* %19, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %69
  %74 = load %struct.libalias*, %struct.libalias** %12, align 8
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %21, align 4
  %77 = load i32, i32* %19, align 4
  %78 = add nsw i32 %76, %77
  %79 = call i32 @htons(i32 %78)
  %80 = load i32, i32* %22, align 4
  %81 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call %struct.alias_link* @FindLinkIn(%struct.libalias* %74, i32 %82, i32 %84, i32 %75, i32 %79, i32 %80, i32 0)
  store %struct.alias_link* %85, %struct.alias_link** %23, align 8
  %86 = icmp ne %struct.alias_link* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %73
  br label %92

88:                                               ; preds = %73
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %19, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %19, align 4
  br label %69

92:                                               ; preds = %87, %69
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* %21, align 4
  %98 = call i32 @htons(i32 %97)
  store i32 %98, i32* %9, align 4
  br label %121

99:                                               ; preds = %92
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* @FIND_EVEN_ALIAS_BASE, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = call i32 (...) @arc4random()
  %105 = load i32, i32* @ALIAS_PORT_MASK_EVEN, align 4
  %106 = and i32 %104, %105
  store i32 %106, i32* %21, align 4
  br label %111

107:                                              ; preds = %99
  %108 = call i32 (...) @arc4random()
  %109 = load i32, i32* @ALIAS_PORT_MASK, align 4
  %110 = and i32 %108, %109
  store i32 %110, i32* %21, align 4
  br label %111

111:                                              ; preds = %107, %103
  %112 = load i64, i64* @ALIAS_PORT_BASE, align 8
  %113 = load i32, i32* %21, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %21, align 4
  br label %117

117:                                              ; preds = %111
  %118 = load i32, i32* %18, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %18, align 4
  br label %64

120:                                              ; preds = %64
  store i32 0, i32* %9, align 4
  br label %121

121:                                              ; preds = %120, %96, %33
  %122 = load i32, i32* %9, align 4
  ret i32 %122
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local %struct.alias_link* @FindLinkIn(%struct.libalias*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
