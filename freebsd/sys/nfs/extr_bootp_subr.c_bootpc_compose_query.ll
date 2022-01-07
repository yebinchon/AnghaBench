; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nfs/extr_bootp_subr.c_bootpc_compose_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nfs/extr_bootp_subr.c_bootpc_compose_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bootpc_ifcontext = type { i32, i8, %struct.TYPE_5__, i32, %struct.TYPE_4__, i8*, %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_5__ = type { i32, i8*, i32, i64, i32, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i8 }
%struct.TYPE_6__ = type { i32 }
%struct.thread = type { i32 }

@BOOTP_REQUEST = common dso_local global i32 0, align 4
@TAG_MAXMSGSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s:%s:%s\00", align 1
@ostype = common dso_local global i8* null, align 8
@MACHINE = common dso_local global i8* null, align 8
@osrelease = common dso_local global i8* null, align 8
@TAG_VENDOR_INDENTIFIER = common dso_local global i32 0, align 4
@DHCP_NOMSG = common dso_local global i8* null, align 8
@TAG_DHCP_MSGTYPE = common dso_local global i8* null, align 8
@DHCP_DISCOVER = common dso_local global i8* null, align 8
@DHCP_REQUEST = common dso_local global i8* null, align 8
@TAG_DHCP_REQ_ADDR = common dso_local global i32 0, align 4
@TAG_DHCP_SERVERID = common dso_local global i32 0, align 4
@TAG_DHCP_LEASETIME = common dso_local global i32 0, align 4
@TAG_END = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bootpc_ifcontext*, %struct.thread*)* @bootpc_compose_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bootpc_compose_query(%struct.bootpc_ifcontext* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.bootpc_ifcontext*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.bootpc_ifcontext* %0, %struct.bootpc_ifcontext** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %9 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %10 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %9, i32 0, i32 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %12 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %11, i32 0, i32 2
  %13 = ptrtoint %struct.TYPE_5__* %12 to i32
  %14 = call i32 @bzero(i32 %13, i32 56)
  %15 = load i32, i32* @BOOTP_REQUEST, align 4
  %16 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %17 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 8
  store i32 %15, i32* %18, align 4
  %19 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %20 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %23 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %22, i32 0, i32 6
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %28 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 7
  store i32 %26, i32* %29, align 8
  %30 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %31 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 6
  store i64 0, i64* %32, align 8
  %33 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %34 = call i64 @bootpc_ifctx_isunresolved(%struct.bootpc_ifcontext* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %2
  %37 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %38 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %36, %2
  %42 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %43 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @txdr_unsigned(i32 %44)
  %46 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %47 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 5
  store i32 %45, i32* %48, align 4
  %49 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %50 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %49, i32 0, i32 6
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = call i32 @LLADDR(%struct.TYPE_6__* %51)
  %53 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %54 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 4
  %56 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %57 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %56, i32 0, i32 6
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @bcopy(i32 %52, i32* %55, i32 %60)
  %62 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %63 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %5, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %5, align 8
  store i8 99, i8* %66, align 1
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %5, align 8
  store i8 -126, i8* %68, align 1
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %5, align 8
  store i8 83, i8* %70, align 1
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %5, align 8
  store i8 99, i8* %72, align 1
  %74 = load i32, i32* @TAG_MAXMSGSIZE, align 4
  %75 = trunc i32 %74 to i8
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %5, align 8
  store i8 %75, i8* %76, align 1
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %5, align 8
  store i8 2, i8* %78, align 1
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %5, align 8
  store i8 0, i8* %80, align 1
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %5, align 8
  store i8 4, i8* %82, align 1
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %85 = load i8*, i8** @ostype, align 8
  %86 = load i8*, i8** @MACHINE, align 8
  %87 = load i8*, i8** @osrelease, align 8
  %88 = call i32 @snprintf(i8* %84, i32 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %85, i8* %86, i8* %87)
  %89 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %90 = call i32 @strlen(i8* %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* @TAG_VENDOR_INDENTIFIER, align 4
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %5, align 8
  store i8 %92, i8* %93, align 1
  %95 = load i32, i32* %8, align 4
  %96 = trunc i32 %95 to i8
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %5, align 8
  store i8 %96, i8* %97, align 1
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @memcpy(i8* %99, i8* %100, i32 %101)
  %103 = load i32, i32* %8, align 4
  %104 = load i8*, i8** %5, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %5, align 8
  %107 = load i8*, i8** @DHCP_NOMSG, align 8
  %108 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %109 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %108, i32 0, i32 5
  store i8* %107, i8** %109, align 8
  %110 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %111 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  switch i32 %112, label %185 [
    i32 128, label %113
    i32 129, label %129
  ]

113:                                              ; preds = %41
  %114 = load i8*, i8** @TAG_DHCP_MSGTYPE, align 8
  %115 = ptrtoint i8* %114 to i8
  %116 = load i8*, i8** %5, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %5, align 8
  store i8 %115, i8* %116, align 1
  %118 = load i8*, i8** %5, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %5, align 8
  store i8 1, i8* %118, align 1
  %120 = load i8*, i8** @DHCP_DISCOVER, align 8
  %121 = ptrtoint i8* %120 to i8
  %122 = load i8*, i8** %5, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %5, align 8
  store i8 %121, i8* %122, align 1
  %124 = load i8*, i8** @DHCP_DISCOVER, align 8
  %125 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %126 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %125, i32 0, i32 5
  store i8* %124, i8** %126, align 8
  %127 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %128 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %127, i32 0, i32 3
  store i32 0, i32* %128, align 8
  br label %186

129:                                              ; preds = %41
  %130 = load i8*, i8** @TAG_DHCP_MSGTYPE, align 8
  %131 = ptrtoint i8* %130 to i8
  %132 = load i8*, i8** %5, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %5, align 8
  store i8 %131, i8* %132, align 1
  %134 = load i8*, i8** %5, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %5, align 8
  store i8 1, i8* %134, align 1
  %136 = load i8*, i8** @DHCP_REQUEST, align 8
  %137 = ptrtoint i8* %136 to i8
  %138 = load i8*, i8** %5, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %5, align 8
  store i8 %137, i8* %138, align 1
  %140 = load i8*, i8** @DHCP_REQUEST, align 8
  %141 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %142 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %141, i32 0, i32 5
  store i8* %140, i8** %142, align 8
  %143 = load i32, i32* @TAG_DHCP_REQ_ADDR, align 4
  %144 = trunc i32 %143 to i8
  %145 = load i8*, i8** %5, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %5, align 8
  store i8 %144, i8* %145, align 1
  %147 = load i8*, i8** %5, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %5, align 8
  store i8 4, i8* %147, align 1
  %149 = load i8*, i8** %5, align 8
  %150 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %151 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = call i32 @memcpy(i8* %149, i8* %152, i32 4)
  %154 = load i8*, i8** %5, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 4
  store i8* %155, i8** %5, align 8
  %156 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %157 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %129
  %161 = load i32, i32* @TAG_DHCP_SERVERID, align 4
  %162 = trunc i32 %161 to i8
  %163 = load i8*, i8** %5, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %5, align 8
  store i8 %162, i8* %163, align 1
  %165 = load i8*, i8** %5, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %5, align 8
  store i8 4, i8* %165, align 1
  %167 = load i8*, i8** %5, align 8
  %168 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %169 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %168, i32 0, i32 1
  %170 = call i32 @memcpy(i8* %167, i8* %169, i32 4)
  %171 = load i8*, i8** %5, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 4
  store i8* %172, i8** %5, align 8
  br label %173

173:                                              ; preds = %160, %129
  %174 = load i32, i32* @TAG_DHCP_LEASETIME, align 4
  %175 = trunc i32 %174 to i8
  %176 = load i8*, i8** %5, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %5, align 8
  store i8 %175, i8* %176, align 1
  %178 = load i8*, i8** %5, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %5, align 8
  store i8 4, i8* %178, align 1
  %180 = call zeroext i8 @htonl(i32 300)
  store i8 %180, i8* %7, align 1
  %181 = load i8*, i8** %5, align 8
  %182 = call i32 @memcpy(i8* %181, i8* %7, i32 4)
  %183 = load i8*, i8** %5, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 4
  store i8* %184, i8** %5, align 8
  br label %186

185:                                              ; preds = %41
  br label %186

186:                                              ; preds = %185, %173, %113
  %187 = load i8, i8* @TAG_END, align 1
  %188 = load i8*, i8** %5, align 8
  store i8 %187, i8* %188, align 1
  %189 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %190 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 3
  store i64 0, i64* %191, align 8
  %192 = call i32 @htons(i32 32768)
  %193 = load %struct.bootpc_ifcontext*, %struct.bootpc_ifcontext** %3, align 8
  %194 = getelementptr inbounds %struct.bootpc_ifcontext, %struct.bootpc_ifcontext* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 2
  store i32 %192, i32* %195, align 8
  ret void
}

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i64 @bootpc_ifctx_isunresolved(%struct.bootpc_ifcontext*) #1

declare dso_local i32 @txdr_unsigned(i32) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @LLADDR(%struct.TYPE_6__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local zeroext i8 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
