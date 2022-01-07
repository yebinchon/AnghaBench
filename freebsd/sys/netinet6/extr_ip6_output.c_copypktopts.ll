; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_output.c_copypktopts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_output.c_copypktopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_pktopts = type { %struct.TYPE_3__*, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"ip6_clearpktopts: invalid argument\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@M_IP6OPT = common dso_local global i32 0, align 4
@ip6po_hbh = common dso_local global i32 0, align 4
@ip6po_dest1 = common dso_local global i32 0, align 4
@ip6po_dest2 = common dso_local global i32 0, align 4
@ip6po_rthdr = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip6_pktopts*, %struct.ip6_pktopts*, i32)* @copypktopts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copypktopts(%struct.ip6_pktopts* %0, %struct.ip6_pktopts* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip6_pktopts*, align 8
  %6 = alloca %struct.ip6_pktopts*, align 8
  %7 = alloca i32, align 4
  store %struct.ip6_pktopts* %0, %struct.ip6_pktopts** %5, align 8
  store %struct.ip6_pktopts* %1, %struct.ip6_pktopts** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %9 = icmp eq %struct.ip6_pktopts* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %6, align 8
  %12 = icmp eq %struct.ip6_pktopts* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %3
  %14 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %114

16:                                               ; preds = %10
  %17 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %6, align 8
  %18 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %21 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %6, align 8
  %23 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %26 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %6, align 8
  %28 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %31 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %6, align 8
  %33 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %36 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %6, align 8
  %38 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %41 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %6, align 8
  %43 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %66

46:                                               ; preds = %16
  %47 = load i32, i32* @M_IP6OPT, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i8* @malloc(i32 4, i32 %47, i32 %48)
  %50 = bitcast i8* %49 to i32*
  %51 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %52 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  %53 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %54 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %110

58:                                               ; preds = %46
  %59 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %6, align 8
  %60 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %64 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  store i32 %62, i32* %65, align 4
  br label %66

66:                                               ; preds = %58, %16
  %67 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %6, align 8
  %68 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = icmp ne %struct.TYPE_3__* %69, null
  br i1 %70, label %71, label %101

71:                                               ; preds = %66
  %72 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %6, align 8
  %73 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @M_IP6OPT, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i8* @malloc(i32 %76, i32 %77, i32 %78)
  %80 = bitcast i8* %79 to %struct.TYPE_3__*
  %81 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %82 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %81, i32 0, i32 0
  store %struct.TYPE_3__* %80, %struct.TYPE_3__** %82, align 8
  %83 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %84 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = icmp eq %struct.TYPE_3__* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %71
  br label %110

88:                                               ; preds = %71
  %89 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %6, align 8
  %90 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %93 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %6, align 8
  %96 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @bcopy(%struct.TYPE_3__* %91, %struct.TYPE_3__* %94, i32 %99)
  br label %101

101:                                              ; preds = %88, %66
  %102 = load i32, i32* @ip6po_hbh, align 4
  %103 = call i32 @PKTOPT_EXTHDRCPY(i32 %102)
  %104 = load i32, i32* @ip6po_dest1, align 4
  %105 = call i32 @PKTOPT_EXTHDRCPY(i32 %104)
  %106 = load i32, i32* @ip6po_dest2, align 4
  %107 = call i32 @PKTOPT_EXTHDRCPY(i32 %106)
  %108 = load i32, i32* @ip6po_rthdr, align 4
  %109 = call i32 @PKTOPT_EXTHDRCPY(i32 %108)
  store i32 0, i32* %4, align 4
  br label %114

110:                                              ; preds = %87, %57
  %111 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %112 = call i32 @ip6_clearpktopts(%struct.ip6_pktopts* %111, i32 -1)
  %113 = load i32, i32* @ENOBUFS, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %110, %101, %13
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_3__*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @PKTOPT_EXTHDRCPY(i32) #1

declare dso_local i32 @ip6_clearpktopts(%struct.ip6_pktopts*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
