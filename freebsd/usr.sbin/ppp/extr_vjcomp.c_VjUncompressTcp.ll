; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_vjcomp.c_VjUncompressTcp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_vjcomp.c_VjUncompressTcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipcp = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mbuf = type { i32 }

@MAX_HDR = common dso_local global i32 0, align 4
@MAX_VJHEADER = common dso_local global i32 0, align 4
@TYPE_UNCOMPRESSED_TCP = common dso_local global i32 0, align 4
@MB_VJIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.ipcp*, %struct.mbuf*, i32)* @VjUncompressTcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @VjUncompressTcp(%struct.ipcp* %0, %struct.mbuf* %1, i32 %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.ipcp*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ipcp* %0, %struct.ipcp** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @MAX_HDR, align 4
  %16 = load i32, i32* @MAX_VJHEADER, align 4
  %17 = add nsw i32 %15, %16
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %22 = call %struct.mbuf* @m_pullup(%struct.mbuf* %21)
  store %struct.mbuf* %22, %struct.mbuf** %6, align 8
  %23 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %24 = call i32 @m_length(%struct.mbuf* %23)
  store i32 %24, i32* %9, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @TYPE_UNCOMPRESSED_TCP, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %3
  %29 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %30 = call i32* @MBUF_CTOP(%struct.mbuf* %29)
  store i32* %30, i32** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %34 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %37 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %40 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 8
  %43 = and i32 %42, 255
  %44 = call i32 @sl_uncompress_tcp(i32** %8, i32 %31, i32 %32, i32* %35, i32* %38, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %28
  %48 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %49 = call i32 @m_freem(%struct.mbuf* %48)
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  br label %54

50:                                               ; preds = %28
  %51 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %52 = load i32, i32* @MB_VJIN, align 4
  %53 = call i32 @m_settype(%struct.mbuf* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %47
  %55 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %55, %struct.mbuf** %4, align 8
  store i32 1, i32* %14, align 4
  br label %105

56:                                               ; preds = %3
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @MAX_VJHEADER, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @MAX_VJHEADER, align 4
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %60, %56
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* @MAX_HDR, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %20, i64 %65
  store i32* %66, i32** %8, align 8
  %67 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call %struct.mbuf* @mbuf_Read(%struct.mbuf* %67, i32* %68, i32 %69)
  store %struct.mbuf* %70, %struct.mbuf** %6, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %74 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %77 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %80 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = ashr i32 %81, 8
  %83 = and i32 %82, 255
  %84 = call i32 @sl_uncompress_tcp(i32** %8, i32 %71, i32 %72, i32* %75, i32* %78, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp sle i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %62
  %88 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %89 = call i32 @m_freem(%struct.mbuf* %88)
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  store i32 1, i32* %14, align 4
  br label %105

90:                                               ; preds = %62
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %9, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %9, align 4
  %97 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call %struct.mbuf* @m_prepend(%struct.mbuf* %97, i32* %98, i32 %99, i32 0)
  store %struct.mbuf* %100, %struct.mbuf** %6, align 8
  %101 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %102 = load i32, i32* @MB_VJIN, align 4
  %103 = call i32 @m_settype(%struct.mbuf* %101, i32 %102)
  %104 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %104, %struct.mbuf** %4, align 8
  store i32 1, i32* %14, align 4
  br label %105

105:                                              ; preds = %90, %87, %54
  %106 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  ret %struct.mbuf* %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.mbuf* @m_pullup(%struct.mbuf*) #2

declare dso_local i32 @m_length(%struct.mbuf*) #2

declare dso_local i32* @MBUF_CTOP(%struct.mbuf*) #2

declare dso_local i32 @sl_uncompress_tcp(i32**, i32, i32, i32*, i32*, i32) #2

declare dso_local i32 @m_freem(%struct.mbuf*) #2

declare dso_local i32 @m_settype(%struct.mbuf*, i32) #2

declare dso_local %struct.mbuf* @mbuf_Read(%struct.mbuf*, i32*, i32) #2

declare dso_local %struct.mbuf* @m_prepend(%struct.mbuf*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
