; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_GetNewPort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_GetNewPort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.alias_link = type { i32, i8*, i32, i32, i32, i32, i32, i8* }

@GET_ALIAS_PORT = common dso_local global i32 0, align 4
@GET_NEW_PORT_MAX_ATTEMPTS = common dso_local global i32 0, align 4
@PKT_ALIAS_SAME_PORTS = common dso_local global i32 0, align 4
@ALIAS_PORT_MASK = common dso_local global i32 0, align 4
@ALIAS_PORT_BASE = common dso_local global i64 0, align 8
@LINK_PARTIALLY_SPECIFIED = common dso_local global i32 0, align 4
@PKT_ALIAS_USE_SOCKETS = common dso_local global i32 0, align 4
@LINK_TCP = common dso_local global i32 0, align 4
@LINK_UDP = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, %struct.alias_link*, i32)* @GetNewPort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetNewPort(%struct.libalias* %0, %struct.alias_link* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.libalias*, align 8
  %6 = alloca %struct.alias_link*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.alias_link*, align 8
  store %struct.libalias* %0, %struct.libalias** %5, align 8
  store %struct.alias_link* %1, %struct.alias_link** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.libalias*, %struct.libalias** %5, align 8
  %15 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %14)
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @GET_ALIAS_PORT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %3
  %20 = load i32, i32* @GET_NEW_PORT_MAX_ATTEMPTS, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.libalias*, %struct.libalias** %5, align 8
  %22 = getelementptr inbounds %struct.libalias, %struct.libalias* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PKT_ALIAS_SAME_PORTS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %29 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %28, i32 0, i32 7
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %11, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = call i8* @ntohs(i8* %31)
  store i8* %32, i8** %10, align 8
  br label %44

33:                                               ; preds = %19
  %34 = call i32 (...) @arc4random()
  %35 = load i32, i32* @ALIAS_PORT_MASK, align 4
  %36 = and i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %10, align 8
  %39 = load i64, i64* @ALIAS_PORT_BASE, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr i8, i8* %40, i64 %39
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = call i8* @htons(i8* %42)
  store i8* %43, i8** %11, align 8
  br label %44

44:                                               ; preds = %33, %27
  br label %58

45:                                               ; preds = %3
  %46 = load i32, i32* %7, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 65536
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %56 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  store i32 0, i32* %4, align 4
  br label %163

57:                                               ; preds = %48, %45
  store i32 -1, i32* %4, align 4
  br label %163

58:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %159, %58
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %162

63:                                               ; preds = %59
  %64 = load %struct.libalias*, %struct.libalias** %5, align 8
  %65 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %66 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %69 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %72 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %76 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call %struct.alias_link* @FindLinkIn(%struct.libalias* %64, i32 %67, i32 %70, i32 %73, i8* %74, i32 %77, i32 0)
  store %struct.alias_link* %78, %struct.alias_link** %13, align 8
  %79 = load %struct.alias_link*, %struct.alias_link** %13, align 8
  %80 = icmp eq %struct.alias_link* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %63
  store i32 1, i32* %12, align 4
  br label %99

82:                                               ; preds = %63
  %83 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %84 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @LINK_PARTIALLY_SPECIFIED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %82
  %90 = load %struct.alias_link*, %struct.alias_link** %13, align 8
  %91 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @LINK_PARTIALLY_SPECIFIED, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  store i32 1, i32* %12, align 4
  br label %98

97:                                               ; preds = %89, %82
  store i32 0, i32* %12, align 4
  br label %98

98:                                               ; preds = %97, %96
  br label %99

99:                                               ; preds = %98, %81
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %148

102:                                              ; preds = %99
  %103 = load %struct.libalias*, %struct.libalias** %5, align 8
  %104 = getelementptr inbounds %struct.libalias, %struct.libalias* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @PKT_ALIAS_USE_SOCKETS, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %143

109:                                              ; preds = %102
  %110 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %111 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @LINK_PARTIALLY_SPECIFIED, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %143

116:                                              ; preds = %109
  %117 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %118 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @LINK_TCP, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %128, label %122

122:                                              ; preds = %116
  %123 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %124 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @LINK_UDP, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %143

128:                                              ; preds = %122, %116
  %129 = load %struct.libalias*, %struct.libalias** %5, align 8
  %130 = load i8*, i8** %11, align 8
  %131 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %132 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %131, i32 0, i32 3
  %133 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %134 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @GetSocket(%struct.libalias* %129, i8* %130, i32* %132, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %128
  %139 = load i8*, i8** %11, align 8
  %140 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %141 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  store i32 0, i32* %4, align 4
  br label %163

142:                                              ; preds = %128
  br label %147

143:                                              ; preds = %122, %109, %102
  %144 = load i8*, i8** %11, align 8
  %145 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %146 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %145, i32 0, i32 1
  store i8* %144, i8** %146, align 8
  store i32 0, i32* %4, align 4
  br label %163

147:                                              ; preds = %142
  br label %148

148:                                              ; preds = %147, %99
  %149 = call i32 (...) @arc4random()
  %150 = load i32, i32* @ALIAS_PORT_MASK, align 4
  %151 = and i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = inttoptr i64 %152 to i8*
  store i8* %153, i8** %10, align 8
  %154 = load i64, i64* @ALIAS_PORT_BASE, align 8
  %155 = load i8*, i8** %10, align 8
  %156 = getelementptr i8, i8* %155, i64 %154
  store i8* %156, i8** %10, align 8
  %157 = load i8*, i8** %10, align 8
  %158 = call i8* @htons(i8* %157)
  store i8* %158, i8** %11, align 8
  br label %159

159:                                              ; preds = %148
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %8, align 4
  br label %59

162:                                              ; preds = %59
  store i32 -1, i32* %4, align 4
  br label %163

163:                                              ; preds = %162, %143, %138, %57, %51
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local i8* @ntohs(i8*) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i8* @htons(i8*) #1

declare dso_local %struct.alias_link* @FindLinkIn(%struct.libalias*, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @GetSocket(%struct.libalias*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
