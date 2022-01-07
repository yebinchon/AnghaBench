; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_rfc1490.c_ng_rfc1490_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_rfc1490.c_ng_rfc1490_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_rfc1490_encap_t = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.ng_rfc1490_encap_t* }
%struct.ng_mesg = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }

@NGM_RFC1490_COOKIE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ng_rfc1490_encaps = common dso_local global %struct.ng_rfc1490_encap_t* null, align 8
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_rfc1490_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_rfc1490_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca %struct.ng_mesg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ng_rfc1490_encap_t*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.TYPE_5__* @NG_NODE_PRIVATE(i32 %14)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %7, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %18 = call i32 @NGI_GET_MSG(i32 %16, %struct.ng_mesg* %17)
  %19 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %20 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NGM_RFC1490_COOKIE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %128

25:                                               ; preds = %3
  %26 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %27 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %125 [
    i32 128, label %30
    i32 129, label %88
  ]

30:                                               ; preds = %25
  %31 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %32 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = call i32 @ERROUT(i32 %37)
  br label %39

39:                                               ; preds = %36, %30
  %40 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %41 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %12, align 8
  %44 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %45 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %13, align 8
  %50 = load %struct.ng_rfc1490_encap_t*, %struct.ng_rfc1490_encap_t** @ng_rfc1490_encaps, align 8
  store %struct.ng_rfc1490_encap_t* %50, %struct.ng_rfc1490_encap_t** %11, align 8
  br label %51

51:                                               ; preds = %73, %39
  %52 = load %struct.ng_rfc1490_encap_t*, %struct.ng_rfc1490_encap_t** %11, align 8
  %53 = getelementptr inbounds %struct.ng_rfc1490_encap_t, %struct.ng_rfc1490_encap_t* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %51
  %57 = load %struct.ng_rfc1490_encap_t*, %struct.ng_rfc1490_encap_t** %11, align 8
  %58 = getelementptr inbounds %struct.ng_rfc1490_encap_t, %struct.ng_rfc1490_encap_t* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @strlen(i32 %59)
  %61 = load i64, i64* %13, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load %struct.ng_rfc1490_encap_t*, %struct.ng_rfc1490_encap_t** %11, align 8
  %65 = getelementptr inbounds %struct.ng_rfc1490_encap_t, %struct.ng_rfc1490_encap_t* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %12, align 8
  %68 = load i64, i64* %13, align 8
  %69 = call i32 @strncmp(i32 %66, i8* %67, i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %76

72:                                               ; preds = %63, %56
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.ng_rfc1490_encap_t*, %struct.ng_rfc1490_encap_t** %11, align 8
  %75 = getelementptr inbounds %struct.ng_rfc1490_encap_t, %struct.ng_rfc1490_encap_t* %74, i32 1
  store %struct.ng_rfc1490_encap_t* %75, %struct.ng_rfc1490_encap_t** %11, align 8
  br label %51

76:                                               ; preds = %71, %51
  %77 = load %struct.ng_rfc1490_encap_t*, %struct.ng_rfc1490_encap_t** %11, align 8
  %78 = getelementptr inbounds %struct.ng_rfc1490_encap_t, %struct.ng_rfc1490_encap_t* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.ng_rfc1490_encap_t*, %struct.ng_rfc1490_encap_t** %11, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store %struct.ng_rfc1490_encap_t* %82, %struct.ng_rfc1490_encap_t** %84, align 8
  br label %87

85:                                               ; preds = %76
  %86 = load i32, i32* @EINVAL, align 4
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %85, %81
  br label %127

88:                                               ; preds = %25
  %89 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %90 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load %struct.ng_rfc1490_encap_t*, %struct.ng_rfc1490_encap_t** %92, align 8
  %94 = getelementptr inbounds %struct.ng_rfc1490_encap_t, %struct.ng_rfc1490_encap_t* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @strlen(i32 %95)
  %97 = add i64 %96, 1
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* @M_NOWAIT, align 4
  %100 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %89, %struct.ng_mesg* %90, i32 %98, i32 %99)
  %101 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %102 = icmp eq %struct.ng_mesg* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %88
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = call i32 @ERROUT(i32 %104)
  br label %106

106:                                              ; preds = %103, %88
  %107 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %108 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load %struct.ng_rfc1490_encap_t*, %struct.ng_rfc1490_encap_t** %112, align 8
  %114 = getelementptr inbounds %struct.ng_rfc1490_encap_t, %struct.ng_rfc1490_encap_t* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load %struct.ng_rfc1490_encap_t*, %struct.ng_rfc1490_encap_t** %117, align 8
  %119 = getelementptr inbounds %struct.ng_rfc1490_encap_t, %struct.ng_rfc1490_encap_t* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @strlen(i32 %120)
  %122 = add i64 %121, 1
  %123 = trunc i64 %122 to i32
  %124 = call i32 @strlcpy(i8* %110, i32 %115, i32 %123)
  br label %127

125:                                              ; preds = %25
  %126 = load i32, i32* @EINVAL, align 4
  store i32 %126, i32* %10, align 4
  br label %127

127:                                              ; preds = %125, %106, %87
  br label %130

128:                                              ; preds = %3
  %129 = load i32, i32* @EINVAL, align 4
  store i32 %129, i32* %10, align 4
  br label %130

130:                                              ; preds = %128, %127
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* %5, align 4
  %135 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %136 = call i32 @NG_RESPOND_MSG(i32 %132, i32 %133, i32 %134, %struct.ng_mesg* %135)
  %137 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %138 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %137)
  %139 = load i32, i32* %10, align 4
  ret i32 %139
}

declare dso_local %struct.TYPE_5__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @ERROUT(i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strncmp(i32, i8*, i64) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
