; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_syscalls.c_print_sctp_cmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_syscalls.c_print_sctp_cmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmsghdr = type { i32, i32 }
%struct.sctp_initmsg = type { i32 }
%struct.sctp_sndrcvinfo = type { i32 }
%struct.sctp_sndinfo = type { i32 }
%struct.sctp_rcvinfo = type { i32 }
%struct.sctp_nxtinfo = type { i32 }
%struct.sctp_prinfo = type { i32 }
%struct.sctp_authinfo = type { i32 }
%struct.in_addr = type { i32 }
%struct.in6_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.cmsghdr*)* @print_sctp_cmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_sctp_cmsg(i32* %0, i32 %1, %struct.cmsghdr* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmsghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cmsghdr* %2, %struct.cmsghdr** %6, align 8
  %9 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %10 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %13 = call i8* @CMSG_DATA(%struct.cmsghdr* %12)
  store i8* %13, i8** %7, align 8
  %14 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %15 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %144 [
    i32 133, label %17
    i32 128, label %31
    i32 129, label %46
    i32 130, label %60
    i32 132, label %74
    i32 131, label %88
    i32 137, label %102
    i32 136, label %116
    i32 135, label %130
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @CMSG_LEN(i32 4)
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32*, i32** %4, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.sctp_initmsg*
  %25 = call i32 @print_sctp_initmsg(i32* %22, %struct.sctp_initmsg* %24)
  br label %30

26:                                               ; preds = %17
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %29 = call i32 @print_gen_cmsg(i32* %27, %struct.cmsghdr* %28)
  br label %30

30:                                               ; preds = %26, %21
  br label %148

31:                                               ; preds = %3
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @CMSG_LEN(i32 4)
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = bitcast i8* %38 to %struct.sctp_sndrcvinfo*
  %40 = call i32 @print_sctp_sndrcvinfo(i32* %36, i32 %37, %struct.sctp_sndrcvinfo* %39)
  br label %45

41:                                               ; preds = %31
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %44 = call i32 @print_gen_cmsg(i32* %42, %struct.cmsghdr* %43)
  br label %45

45:                                               ; preds = %41, %35
  br label %148

46:                                               ; preds = %3
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @CMSG_LEN(i32 4)
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32*, i32** %4, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = bitcast i8* %52 to %struct.sctp_sndinfo*
  %54 = call i32 @print_sctp_sndinfo(i32* %51, %struct.sctp_sndinfo* %53)
  br label %59

55:                                               ; preds = %46
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %58 = call i32 @print_gen_cmsg(i32* %56, %struct.cmsghdr* %57)
  br label %59

59:                                               ; preds = %55, %50
  br label %148

60:                                               ; preds = %3
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @CMSG_LEN(i32 4)
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i32*, i32** %4, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = bitcast i8* %66 to %struct.sctp_rcvinfo*
  %68 = call i32 @print_sctp_rcvinfo(i32* %65, %struct.sctp_rcvinfo* %67)
  br label %73

69:                                               ; preds = %60
  %70 = load i32*, i32** %4, align 8
  %71 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %72 = call i32 @print_gen_cmsg(i32* %70, %struct.cmsghdr* %71)
  br label %73

73:                                               ; preds = %69, %64
  br label %148

74:                                               ; preds = %3
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @CMSG_LEN(i32 4)
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i32*, i32** %4, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = bitcast i8* %80 to %struct.sctp_nxtinfo*
  %82 = call i32 @print_sctp_nxtinfo(i32* %79, %struct.sctp_nxtinfo* %81)
  br label %87

83:                                               ; preds = %74
  %84 = load i32*, i32** %4, align 8
  %85 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %86 = call i32 @print_gen_cmsg(i32* %84, %struct.cmsghdr* %85)
  br label %87

87:                                               ; preds = %83, %78
  br label %148

88:                                               ; preds = %3
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @CMSG_LEN(i32 4)
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i32*, i32** %4, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = bitcast i8* %94 to %struct.sctp_prinfo*
  %96 = call i32 @print_sctp_prinfo(i32* %93, %struct.sctp_prinfo* %95)
  br label %101

97:                                               ; preds = %88
  %98 = load i32*, i32** %4, align 8
  %99 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %100 = call i32 @print_gen_cmsg(i32* %98, %struct.cmsghdr* %99)
  br label %101

101:                                              ; preds = %97, %92
  br label %148

102:                                              ; preds = %3
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @CMSG_LEN(i32 4)
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i32*, i32** %4, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = bitcast i8* %108 to %struct.sctp_authinfo*
  %110 = call i32 @print_sctp_authinfo(i32* %107, %struct.sctp_authinfo* %109)
  br label %115

111:                                              ; preds = %102
  %112 = load i32*, i32** %4, align 8
  %113 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %114 = call i32 @print_gen_cmsg(i32* %112, %struct.cmsghdr* %113)
  br label %115

115:                                              ; preds = %111, %106
  br label %148

116:                                              ; preds = %3
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @CMSG_LEN(i32 4)
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load i32*, i32** %4, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = bitcast i8* %122 to %struct.in_addr*
  %124 = call i32 @print_sctp_ipv4_addr(i32* %121, %struct.in_addr* %123)
  br label %129

125:                                              ; preds = %116
  %126 = load i32*, i32** %4, align 8
  %127 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %128 = call i32 @print_gen_cmsg(i32* %126, %struct.cmsghdr* %127)
  br label %129

129:                                              ; preds = %125, %120
  br label %148

130:                                              ; preds = %3
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @CMSG_LEN(i32 4)
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  %135 = load i32*, i32** %4, align 8
  %136 = load i8*, i8** %7, align 8
  %137 = bitcast i8* %136 to %struct.in6_addr*
  %138 = call i32 @print_sctp_ipv6_addr(i32* %135, %struct.in6_addr* %137)
  br label %143

139:                                              ; preds = %130
  %140 = load i32*, i32** %4, align 8
  %141 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %142 = call i32 @print_gen_cmsg(i32* %140, %struct.cmsghdr* %141)
  br label %143

143:                                              ; preds = %139, %134
  br label %148

144:                                              ; preds = %3
  %145 = load i32*, i32** %4, align 8
  %146 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %147 = call i32 @print_gen_cmsg(i32* %145, %struct.cmsghdr* %146)
  br label %148

148:                                              ; preds = %144, %143, %129, %115, %101, %87, %73, %59, %45, %30
  ret void
}

declare dso_local i8* @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @CMSG_LEN(i32) #1

declare dso_local i32 @print_sctp_initmsg(i32*, %struct.sctp_initmsg*) #1

declare dso_local i32 @print_gen_cmsg(i32*, %struct.cmsghdr*) #1

declare dso_local i32 @print_sctp_sndrcvinfo(i32*, i32, %struct.sctp_sndrcvinfo*) #1

declare dso_local i32 @print_sctp_sndinfo(i32*, %struct.sctp_sndinfo*) #1

declare dso_local i32 @print_sctp_rcvinfo(i32*, %struct.sctp_rcvinfo*) #1

declare dso_local i32 @print_sctp_nxtinfo(i32*, %struct.sctp_nxtinfo*) #1

declare dso_local i32 @print_sctp_prinfo(i32*, %struct.sctp_prinfo*) #1

declare dso_local i32 @print_sctp_authinfo(i32*, %struct.sctp_authinfo*) #1

declare dso_local i32 @print_sctp_ipv4_addr(i32*, %struct.in_addr*) #1

declare dso_local i32 @print_sctp_ipv6_addr(i32*, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
